<?= $this->extend('layout/main') ?>
<?= $this->section('content') ?>

<style>
@import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800&family=DM+Mono:wght@400;500&display=swap');

:root {
  --green-deep:   #4a7a26;
  --green-mid:    #77BC3F;
  --green-light:  #99d15f;
  --green-glow:   #b8e48a;
  --orange-deep:  #c96b10;
  --orange-mid:   #F58220;
  --orange-light: #f9a75a;
  --amber:        #f5a623;
  --bg:           #f8fafc;
  --surface:      #ffffff;
  --surface2:     #f0fdf4;
  --text-1:       #1e293b;
  --text-2:       #334155;
  --text-3:       #64748b;
  --border:       #e2e8f0;
  --shadow-sm:    0 1px 4px rgba(119,188,63,.08);
  --shadow-md:    0 4px 16px rgba(119,188,63,.12);
  --radius:       14px;
  --radius-sm:    8px;
}

* { box-sizing: border-box; }
body { font-family: 'Outfit', sans-serif; background: var(--bg); color: var(--text-1); }
.mono { font-family: 'DM Mono', monospace; }

.page-wrap { animation: fadeUp .45s ease both; max-width: 820px; margin: 0 auto; }
@keyframes fadeUp { from{opacity:0;transform:translateY(14px)}to{opacity:1;transform:none} }

/* ── Page Header ── */
.page-header {
  display:flex; align-items:center; justify-content:space-between; flex-wrap:wrap; gap:10px;
  background:var(--surface); border-radius:var(--radius) var(--radius) 0 0;
  padding:16px 20px; border:1px solid var(--border); border-bottom:none;
}
.page-title h5 { font-size:1rem; font-weight:800; color:var(--text-1); margin:0; letter-spacing:-.2px; }
.page-title p  { font-size:.68rem; color:var(--text-3); margin:2px 0 0; }
.page-actions  { display:flex; gap:6px; flex-wrap:wrap; align-items:center; }

/* ── Buttons ── */
.btn-primary-c {
  display:inline-flex; align-items:center; gap:5px;
  background:linear-gradient(135deg,var(--green-deep),var(--green-mid));
  color:#fff; border:none; border-radius:8px;
  padding:6px 14px; font-size:.7rem; font-weight:600;
  text-decoration:none; cursor:pointer; transition:all .2s;
  box-shadow:0 4px 12px rgba(119,188,63,.3); font-family:'Outfit',sans-serif;
}
.btn-primary-c:hover { transform:translateY(-1px); color:#fff; box-shadow:0 6px 18px rgba(119,188,63,.4); }

.btn-outline-c {
  display:inline-flex; align-items:center; gap:5px;
  background:transparent; color:var(--text-2);
  border:1.5px solid var(--border); border-radius:8px;
  padding:6px 12px; font-size:.7rem; font-weight:600;
  text-decoration:none; cursor:pointer; transition:all .2s; font-family:'Outfit',sans-serif;
}
.btn-outline-c:hover { border-color:var(--green-mid); color:var(--green-deep); background:var(--surface2); }

/* ── Tab Nav ── */
.tab-nav-wrap {
  background:var(--surface); border:1px solid var(--border); border-top:none;
  padding:0 20px;
}
.tab-nav {
  display:flex; gap:0; list-style:none; margin:0; padding:0;
  border-bottom: 1px solid var(--border);
}
.tab-nav li button {
  display:inline-flex; align-items:center; gap:6px;
  padding:12px 16px; font-size:.72rem; font-weight:600;
  color:var(--text-3); background:none; border:none;
  border-bottom:2px solid transparent; cursor:pointer;
  transition:all .2s; font-family:'Outfit',sans-serif;
  margin-bottom:-1px;
}
.tab-nav li button:hover { color:var(--green-deep); }
.tab-nav li button.active {
  color:var(--green-deep);
  border-bottom-color:var(--green-mid);
}
.tab-nav li button i { font-size:.78rem; }

/* ── Form Body ── */
.form-body {
  background:var(--surface); border:1px solid var(--border); border-top:none;
  border-radius:0 0 var(--radius) var(--radius);
  padding:24px 20px;
}

/* ── Tab Panels ── */
.tab-panel { display:none; }
.tab-panel.active { display:block; }

/* ── Step Indicator ── */
.step-dots {
  display:flex; gap:6px; align-items:center;
}
.step-dot {
  width:7px; height:7px; border-radius:50%;
  background:var(--border); transition:background .2s;
}
.step-dot.active { background:var(--green-mid); }
.step-dot.done   { background:var(--green-deep); }

/* ── Form controls ── */
.form-section-title {
  font-size:.62rem; font-weight:700; text-transform:uppercase;
  letter-spacing:.6px; color:var(--text-3);
  margin-bottom:14px; padding-bottom:6px;
  border-bottom:1px solid var(--border);
}

.field-group { margin-bottom:14px; }
.field-label {
  display:block; font-size:.7rem; font-weight:700;
  color:var(--text-2); margin-bottom:5px;
}
.field-label .req { color:#e74c3c; margin-left:2px; }
.field-hint { font-size:.62rem; color:var(--text-3); margin-top:4px; }

.form-control, .form-select {
  width:100%; border:1.5px solid var(--border); border-radius:var(--radius-sm);
  padding:8px 12px; font-size:.78rem; font-family:'Outfit',sans-serif;
  color:var(--text-1); background:var(--surface);
  transition:border-color .2s, box-shadow .2s; outline:none;
}
.form-control:focus, .form-select:focus {
  border-color:var(--green-mid);
  box-shadow:0 0 0 3px rgba(119,188,63,.12);
}
.form-control::placeholder { color:#b0bec5; }
textarea.form-control { resize:vertical; min-height:70px; }

.input-group {
  display:flex;
}
.input-group .form-control { border-radius:var(--radius-sm) 0 0 var(--radius-sm); }
.input-group-text {
  padding:8px 12px; font-size:.72rem; font-weight:600;
  background:var(--surface2); border:1.5px solid var(--border); border-left:none;
  border-radius:0 var(--radius-sm) var(--radius-sm) 0; color:var(--text-3);
  white-space:nowrap;
}

.row-grid { display:grid; grid-template-columns:1fr 1fr; gap:12px; }
@media(max-width:580px){ .row-grid{ grid-template-columns:1fr; } }

/* ── Source type cards ── */
.source-cards { display:flex; gap:8px; flex-wrap:wrap; }
.source-card {
  flex:1; min-width:120px;
  border:1.5px solid var(--border); border-radius:var(--radius-sm);
  padding:10px 14px; cursor:pointer; transition:all .2s;
  display:flex; align-items:center; gap:8px;
  font-size:.72rem; font-weight:600; color:var(--text-2);
}
.source-card:hover { border-color:var(--green-mid); color:var(--green-deep); background:var(--surface2); }
.source-card input[type=radio] { display:none; }
.source-card.selected { border-color:var(--green-mid); background:var(--surface2); color:var(--green-deep); }
.source-card i { font-size:.88rem; }

/* ── Assignment type pills ── */
.assign-pills { display:flex; gap:8px; flex-wrap:wrap; }
.assign-pill {
  padding:6px 14px; border-radius:20px; font-size:.68rem; font-weight:700;
  border:1.5px solid var(--border); cursor:pointer; transition:all .2s;
  color:var(--text-3); background:var(--surface);
}
.assign-pill:hover { border-color:var(--green-mid); color:var(--green-deep); }
.assign-pill.selected { background:var(--surface2); border-color:var(--green-mid); color:var(--green-deep); }

/* ── Divider ── */
.form-divider { border:none; border-top:1px solid var(--border); margin:20px 0; }

/* ── Footer actions ── */
.form-footer {
  display:flex; align-items:center; justify-content:space-between; gap:10px; flex-wrap:wrap;
  padding-top:16px; border-top:1px solid var(--border);
}
.form-footer-left { display:flex; gap:6px; align-items:center; }

/* ── Nav between tabs ── */
.tab-nav-btns { display:flex; gap:8px; }
</style>

<div class="page-wrap">

  <!-- Page Header -->
  <div class="page-header">
    <div class="page-title">
      <h5><i class="fa-solid fa-box me-2" style="color:var(--green-mid)"></i>Define Relief Item</h5>
      <p>Specify item details and batch information for QR tracking</p>
    </div>
    <div class="page-actions">
      <a href="/inventory" class="btn-outline-c">
        <i class="fa-solid fa-arrow-left"></i> Back to Inventory
      </a>
    </div>
  </div>

  <!-- Tab Navigation -->
  <div class="tab-nav-wrap">
    <ul class="tab-nav" id="formTabs">
      <li>
        <button class="active" data-tab="basic">
          <i class="fa-solid fa-box"></i> Basic Information
        </button>
      </li>
      <li>
        <button data-tab="batch">
          <i class="fa-solid fa-layer-group"></i> Batch Details
        </button>
      </li>
      <li>
        <button data-tab="source">
          <i class="fa-solid fa-truck"></i> Source & Assignment
        </button>
      </li>
    </ul>
  </div>

  <!-- Form Body -->
  <div class="form-body">
    <form action="/inventory/saveItemWithBatch" method="post" id="addItemForm">
      <?= csrf_field() ?>
      <input type="hidden" name="barangay" value="">

      <!-- ── Tab 1: Basic Information ── -->
      <div class="tab-panel active" id="tab-basic">
        <p class="form-section-title"><i class="fa-solid fa-circle-info me-1"></i>Item Details</p>

        <div class="field-group">
          <label class="field-label">Item Name <span class="req">*</span></label>
          <input type="text" name="item_name" class="form-control" placeholder="e.g., Family Food Pack" required>
        </div>

        <div class="row-grid">
          <div class="field-group">
            <label class="field-label">Unit Type <span class="req">*</span></label>
            <select name="unit_type" class="form-select" required>
              <option value="">Select Unit Type</option>
              <option value="Pack">Pack</option>
              <option value="Kit">Kit</option>
              <option value="Sack">Sack</option>
              <option value="Box">Box</option>
              <option value="Piece">Piece</option>
              <option value="Liter">Liter</option>
              <option value="Kilogram">Kilogram</option>
            </select>
          </div>
          <div class="field-group">
            <label class="field-label">Allocation per Household <span class="req">*</span></label>
            <div class="input-group">
              <input type="number" name="allocation" class="form-control" placeholder="Amount" required min="1">
              <span class="input-group-text" id="unit-display">Per Unit</span>
            </div>
          </div>
        </div>

        <div class="form-footer">
          <div></div>
          <div class="tab-nav-btns">
            <button type="button" class="btn-primary-c" onclick="switchTab('batch')">
              Next: Batch Details <i class="fa-solid fa-arrow-right ms-1"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- ── Tab 2: Batch Details ── -->
      <div class="tab-panel" id="tab-batch">
        <p class="form-section-title"><i class="fa-solid fa-layer-group me-1"></i>Batch & Storage Information</p>

        <div class="row-grid">
          <div class="field-group">
            <label class="field-label">Storage Unit <span class="req">*</span></label>
            <select name="storage_unit" class="form-select" required>
              <option value="">Select Storage Unit</option>
              <option value="Box">Box</option>
              <option value="Crate">Crate</option>
              <option value="Carton">Carton</option>
              <option value="Bundle">Bundle</option>
              <option value="Pallet">Pallet</option>
              <option value="Container">Container</option>
              <option value="Sack">Sack</option>
              <option value="Drum">Drum</option>
            </select>
            <p class="field-hint">Storage container type for this batch</p>
          </div>
          <div class="field-group">
            <label class="field-label">Units per Storage <span class="req">*</span></label>
            <input type="number" name="units_per_storage" class="form-control" placeholder="e.g., 50" required min="1" value="1">
            <p class="field-hint">Number of individual items per storage unit</p>
          </div>
        </div>

        <div class="row-grid">
          <div class="field-group">
            <label class="field-label">Initial Quantity <span class="req">*</span></label>
            <input type="number" name="quantity" class="form-control" placeholder="0" required min="1">
          </div>
          <div class="field-group">
            <label class="field-label">Date Received <span class="req">*</span></label>
            <input type="date" name="date_received" class="form-control" value="<?= date('Y-m-d') ?>" required>
          </div>
        </div>

        <div class="row-grid">
          <div class="field-group">
            <label class="field-label">Expiry Date <span style="color:var(--text-3);font-weight:500">(Optional)</span></label>
            <input type="date" name="expiry_date" class="form-control">
            <p class="field-hint">Leave blank if no expiry</p>
          </div>
          <div class="field-group">
            <label class="field-label">Storage Location</label>
            <input type="text" name="storage_location" class="form-control" placeholder="e.g., Warehouse A, Shelf 3">
          </div>
        </div>

        <div class="field-group">
          <label class="field-label">Batch Notes</label>
          <textarea name="notes" class="form-control" placeholder="Additional notes about this batch..."></textarea>
        </div>

        <div class="form-footer">
          <button type="button" class="btn-outline-c" onclick="switchTab('basic')">
            <i class="fa-solid fa-arrow-left me-1"></i> Back
          </button>
          <button type="button" class="btn-primary-c" onclick="switchTab('source')">
            Next: Source & Assignment <i class="fa-solid fa-arrow-right ms-1"></i>
          </button>
        </div>
      </div>

      <!-- ── Tab 3: Source & Assignment ── -->
      <div class="tab-panel" id="tab-source">
        <p class="form-section-title"><i class="fa-solid fa-truck me-1"></i>Source Information</p>

        <div class="field-group">
          <label class="field-label">Source Type <span class="req">*</span></label>
          <div class="source-cards">
            <label class="source-card" id="sc-procured">
              <input type="radio" name="source_type" value="procured" required>
              <i class="fa-solid fa-receipt"></i> Procured
            </label>
            <label class="source-card" id="sc-donated">
              <input type="radio" name="source_type" value="donated">
              <i class="fa-solid fa-hand-holding-heart"></i> Donated
            </label>
            <label class="source-card" id="sc-gov">
              <input type="radio" name="source_type" value="government-issued">
              <i class="fa-solid fa-landmark"></i> Gov. Issued
            </label>
          </div>
        </div>

        <div class="field-group">
          <label class="field-label">Source Details</label>
          <input type="text" name="source_details" class="form-control" placeholder="e.g., Donor name, PO number, Agency">
        </div>

        <hr class="form-divider">
        <p class="form-section-title"><i class="fa-solid fa-map-pin me-1"></i>Assignment</p>

        <div class="field-group">
          <label class="field-label">Assignment Type</label>
          <div class="assign-pills">
            <span class="assign-pill selected" data-assign="">
              <i class="fa-solid fa-warehouse me-1"></i> General Stock
            </span>
            <span class="assign-pill" data-assign="barangay">
              <i class="fa-solid fa-location-dot me-1"></i> Assign to Barangay
            </span>
            <span class="assign-pill" data-assign="beneficiary">
              <i class="fa-solid fa-user me-1"></i> Assign to Beneficiary
            </span>
          </div>
          <input type="hidden" name="assignment_type" id="assignmentTypeInput" value="">
        </div>

        <!-- Barangay Field -->
        <div class="field-group" id="barangayField" style="display:none;">
          <label class="field-label">Select Barangay</label>
          <select name="barangay_name" class="form-select">
            <option value="">Select Barangay</option>
            <?php if(isset($barangays) && !empty($barangays)): ?>
              <?php foreach($barangays as $barangay): ?>
                <option value="<?= esc($barangay) ?>"><?= esc($barangay) ?></option>
              <?php endforeach; ?>
            <?php else: ?>
              <option value="Bonbon">Bonbon</option>
              <option value="Catibac">Catibac</option>
              <option value="Barangay 1">Barangay 1</option>
              <option value="Barangay 2">Barangay 2</option>
              <option value="Barangay 3">Barangay 3</option>
            <?php endif; ?>
          </select>
        </div>

        <!-- Beneficiary Field -->
        <div class="field-group" id="beneficiaryField" style="display:none;">
          <label class="field-label">Select Beneficiary</label>
          <select name="assigned_to" class="form-select">
            <option value="">Select Household</option>
          </select>
          <p class="field-hint">Or enter household number:</p>
          <input type="text" name="assigned_household" class="form-control mt-1" placeholder="Household No.">
        </div>

        <div class="form-footer">
          <button type="button" class="btn-outline-c" onclick="switchTab('batch')">
            <i class="fa-solid fa-arrow-left me-1"></i> Back
          </button>
          <button type="submit" class="btn-primary-c" style="padding:8px 20px;font-size:.78rem;">
            <i class="fa-solid fa-qrcode me-1"></i> Save & Generate QR
          </button>
        </div>
      </div>

    </form>
  </div>
</div>

<script>
// ── Tab Switcher ──
const tabs = ['basic', 'batch', 'source'];

function switchTab(name) {
  tabs.forEach(t => {
    document.getElementById('tab-' + t).classList.remove('active');
  });
  document.querySelectorAll('.tab-nav button').forEach(btn => {
    btn.classList.toggle('active', btn.dataset.tab === name);
  });
  document.getElementById('tab-' + name).classList.add('active');
}

document.querySelectorAll('.tab-nav button').forEach(btn => {
  btn.addEventListener('click', () => switchTab(btn.dataset.tab));
});

// ── Source Cards ──
document.querySelectorAll('.source-card').forEach(card => {
  card.addEventListener('click', function() {
    document.querySelectorAll('.source-card').forEach(c => c.classList.remove('selected'));
    this.classList.add('selected');
  });
});

// ── Assignment Pills ──
document.querySelectorAll('.assign-pill').forEach(pill => {
  pill.addEventListener('click', function() {
    document.querySelectorAll('.assign-pill').forEach(p => p.classList.remove('selected'));
    this.classList.add('selected');

    const val = this.dataset.assign;
    document.getElementById('assignmentTypeInput').value = val;
    document.getElementById('barangayField').style.display  = (val === 'barangay')    ? 'block' : 'none';
    document.getElementById('beneficiaryField').style.display = (val === 'beneficiary') ? 'block' : 'none';

    if (val !== 'barangay')     document.querySelector('select[name="barangay_name"]').value = '';
    if (val !== 'beneficiary')  {
      document.querySelector('select[name="assigned_to"]').value = '';
      const hh = document.querySelector('input[name="assigned_household"]');
      if(hh) hh.value = '';
    }
  });
});

// Sync barangay_name → assigned_to
document.querySelector('select[name="barangay_name"]').addEventListener('change', function() {
  document.querySelector('select[name="assigned_to"]').value = this.value || '';
});

// Unit display update
document.querySelector('select[name="unit_type"]').addEventListener('change', function() {
  document.getElementById('unit-display').textContent = this.value ? 'Per ' + this.value : 'Per Unit';
});
</script>

<?= $this->endSection() ?>