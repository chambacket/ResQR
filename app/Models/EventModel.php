<?php
// app/Models/EventModel.php

namespace App\Models;

use CodeIgniter\Model;

class EventModel extends Model
{
    protected $table = 'events';
    protected $primaryKey = 'id';
    protected $useAutoIncrement = true;
    protected $returnType = 'array';
    protected $useSoftDeletes = false;
    protected $protectFields = true;
protected $allowedFields = [
    'event_name',
    'description',
    'start_date',
    'end_date',
    'status',
    'is_active',
    'created_by'
];

    protected $useTimestamps = true;
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';

    /**
     * Get the currently active event
     * Only one event should be active at a time
     */
    public function getActiveEvent()
    {
        return $this->where('is_active', 1)
                    ->where('status', 'active')
                    ->first();
    }

    /**
     * Set an event as active and deactivate all others
     */
    public function setActiveEvent($eventId)
    {
        $db = \Config\Database::connect();
        $db->transStart();

        // Deactivate all events
        $this->where('is_active', 1)
             ->set(['is_active' => 0])
             ->update();

        // Activate the selected event
        $this->update($eventId, ['is_active' => 1, 'status' => 'active']);

        $db->transComplete();
        return $db->transStatus();
    }

    /**
     * Get events by barangay
     */
    public function getByBarangay($barangay, $includeAll = false)
    {
        $builder = $this->orderBy('created_at', 'DESC');
        
        if (!$includeAll && $barangay) {
            $builder->where('barangay', $barangay);
        }
        
        return $builder->findAll();
    }

public function closeEvent($eventId)
{
    return $this->update($eventId, [
        'status' => 'closed',
        'is_active' => 0
    ]);
}
}