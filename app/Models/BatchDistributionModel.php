<?php
// app/Models/BatchDistributionModel.php

namespace App\Models;

use CodeIgniter\Model;

class BatchDistributionModel extends Model
{
    protected $table            = 'batch_distributions';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
// In BatchDistributionModel.php, update the allowedFields array:
protected $allowedFields = [
    'event_id',              // ADD THIS LINE
    'batch_id',
    'resident_id',
    'family_member_id',
    'distributor_id',
    'quantity_distributed',
    'distribution_date',
    'qr_code_scanned',
    'status',
    'remarks'
];

    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';

    /**
     * Log a distribution with batch tracking
     */
    public function logDistribution($data)
    {
        // Start transaction
        $db = \Config\Database::connect();
        $db->transStart();

        // Insert distribution record
        $this->insert($data);

        // Update batch quantity
        $batchModel = new InventoryBatchModel();
        $batchModel->deductFromBatch($data['batch_id'], $data['quantity_distributed']);

        $db->transComplete();

        return $db->transStatus();
    }

    /**
     * Get distribution history with batch details
     */
    public function getDistributionHistory($residentId = null, $date = null)
    {
        $builder = $this->db->table('batch_distributions bd');
        $builder->select('bd.*, 
                         ib.batch_number,
                         ib.source_type,
                         ib.source_details,
                         i.item_name,
                         i.unit_type,
                         r.first_name,
                         r.last_name,
                         r.household_no,
                         fm.name as family_member_name,
                         u.username as distributor_name')
                ->join('inventory_batches ib', 'ib.id = bd.batch_id')
                ->join('inventory i', 'i.id = ib.inventory_id')
                ->join('residents r', 'r.id = bd.resident_id', 'left')
                ->join('family_members fm', 'fm.id = bd.family_member_id', 'left')
                ->join('users u', 'u.id = bd.distributor_id', 'left')
                ->orderBy('bd.distribution_date', 'DESC');

        if ($residentId) {
            $builder->where('bd.resident_id', $residentId);
        }

        if ($date) {
            $builder->where('DATE(bd.distribution_date)', $date);
        }

        return $builder->get()->getResultArray();
    }

    /**
     * Get summary by batch
     */
    public function getSummaryByBatch($batchId)
    {
        return $this->select('SUM(quantity_distributed) as total_distributed, COUNT(id) as total_transactions')
                    ->where('batch_id', $batchId)
                    ->get()
                    ->getRowArray();
    }
}