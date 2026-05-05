<?= $this->extend('layout/main') ?>
<?= $this->section('content') ?>

<style>
@import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800&family=DM+Mono:wght@400;500&display=swap');

:root {
  --green-deep:   #4a7a26;
  --green-mid:    #77BC3F;
  --green-light:  #99d15f;
  --orange-deep:  #c96b10;
  --orange-mid:   #F58220;
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

.page-wrap { animation: fadeUp .45s ease both; }
@keyframes fadeUp { from { opacity:0; transform:translateY(14px); } to { opacity:1; transform:none; } }

/* ── Flash ── */
.flash {
  display:flex; align-items:center; gap:10px;
  padding:10px 16px; border-radius:10px; font-size:.75rem; font-weight:500;
  margin-bottom:12px; border:1px solid;
}
.flash.success { background:#e8f5ee; color:var(--green-deep); border-color:#b2dfc2; }
.flash.error   { background:#fdf0ee; color:var(--orange-deep); border-color:#f7c5ae; }
.flash-close   { margin-left:auto; background:none; border:none; cursor:pointer; opacity:.5; font-size:.8rem; }
.flash-close:hover { opacity:1; }

/* ── Page header ── */
.page-header {
  display:flex; align-items:center; justify-content:space-between; flex-wrap:wrap; gap:10px;
  background:var(--surface); border-radius:var(--radius) var(--radius) 0 0;
  padding:16px 20px; border:1px solid var(--border); border-bottom:none;
}
.page-title h5 { font-size:1rem; font-weight:800; color:var(--text-1); margin:0; letter-spacing:-.2px; }
.page-title p  { font-size:.68rem; color:var(--text-3); margin:2px 0 0; }
.page-actions  { display:flex; gap:6px; flex-wrap:wrap; align-items:center; }

.btn-primary-c {
  display:inline-flex; align-items:center; gap:5px;
  background:linear-gradient(135deg,var(--green-deep),var(--green-mid));
  color:#fff; border:none; border-radius:8px;
  padding:7px 14px; font-size:.7rem; font-weight:600;
  text-decoration:none; cursor:pointer; transition:all .2s;
  box-shadow:0 4px 12px rgba(26,92,46,.3); font-family:'Outfit',sans-serif;
}
.btn-primary-c:hover { transform:translateY(-1px); box-shadow:0 6px 18px rgba(26,92,46,.4); color:#fff; }

.btn-outline-c {
  display:inline-flex; align-items:center; gap:5px;
  background:transparent; color:var(--text-2);
  border:1.5px solid var(--border); border-radius:8px;
  padding:7px 12px; font-size:.7rem; font-weight:600;
  text-decoration:none; cursor:pointer; transition:all .2s; font-family:'Outfit',sans-serif;
}
.btn-outline-c:hover { border-color:var(--green-mid); color:var(--green-deep); background:#e8f5ee; }

/* ── Filter bar ── */
.filter-bar {
  background:var(--surface2); border:1px solid var(--border); border-top:none;
  padding:12px 16px; display:flex; gap:8px; flex-wrap:wrap; align-items:center;
}
.filter-search-row {
  display:flex; gap:8px; width:100%; max-width:420px; flex:1; min-width:220px;
}
.filter-input-wrap { position:relative; flex:1; }
.filter-input-wrap i { position:absolute; left:10px; top:50%; transform:translateY(-50%); color:var(--text-3); font-size:.72rem; pointer-events:none; }
.filter-input {
  width:100%; padding:7px 10px 7px 30px; border:1.5px solid var(--border);
  border-radius:8px; font-size:.72rem; font-family:'Outfit',sans-serif;
  background:var(--surface); color:var(--text-1); transition:border-color .2s;
}
.filter-input:focus { outline:none; border-color:var(--green-mid); box-shadow:0 0 0 3px rgba(119,188,63,.1); }
.filter-select {
  padding:7px 28px 7px 10px; border:1.5px solid var(--border);
  border-radius:8px; font-size:.72rem; font-family:'Outfit',sans-serif;
  background:var(--surface); color:var(--text-1); cursor:pointer;
  appearance:none; background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='10' height='6'%3E%3Cpath d='M0 0l5 6 5-6z' fill='%2364748b'/%3E%3C/svg%3E");
  background-repeat:no-repeat; background-position:right 8px center; transition:border-color .2s;
}
.filter-select:focus { outline:none; border-color:var(--green-mid); box-shadow:0 0 0 3px rgba(119,188,63,.1); }

.filter-row-2 { display:flex; gap:8px; flex-wrap:wrap; align-items:center; }

.reset-btn {
  display:inline-flex; align-items:center; gap:5px;
  padding:7px 12px; border-radius:8px; border:1.5px solid var(--border);
  background:var(--surface); color:var(--text-3); font-size:.7rem; font-weight:600;
  cursor:pointer; font-family:'Outfit',sans-serif; transition:all .2s;
  white-space:nowrap;
}
.reset-btn:hover { border-color:var(--orange-mid); color:var(--orange-deep); background:#fef0e8; }

/* ── Per-page / info bar ── */
.meta-bar {
  background:var(--surface2); border:1px solid var(--border); border-bottom:none;
  padding:8px 16px; display:flex; align-items:center; justify-content:space-between;
  flex-wrap:wrap; gap:8px;
}
.meta-bar-left { display:flex; align-items:center; gap:8px; }
.meta-bar label, .meta-bar span { font-size:.68rem; color:var(--text-3); }

/* ── Table wrapper (desktop) ── */
.table-wrap {
  background:var(--surface); border:1px solid var(--border); border-top:none;
  overflow:hidden;
}
.table-scroll { overflow-x:auto; -webkit-overflow-scrolling:touch; }

/* ── Table ── */
.rt { width:100%; border-collapse:collapse; font-size:.7rem; }
.rt thead th {
  background:var(--bg); padding:8px 10px; text-align:left;
  font-size:.6rem; font-weight:700; text-transform:uppercase; letter-spacing:.55px;
  color:var(--text-3); border-bottom:1px solid var(--border); white-space:nowrap;
}
.rt thead th:first-child { padding-left:16px; }
.rt thead th:last-child  { text-align:right; padding-right:16px; }
.rt tbody tr.main-row { cursor:pointer; transition:background .15s; }
.rt tbody tr.main-row:hover { background:var(--surface2); }
.rt tbody tr.main-row.expanded-active { background:#e8f5ee !important; border-left:3px solid var(--orange-mid); }
.rt td { padding:9px 10px; border-bottom:1px solid var(--border); vertical-align:middle; }
.rt td:first-child { padding-left:16px; }
.rt td:last-child  { text-align:right; padding-right:16px; }
.rt-check { width:14px; height:14px; accent-color:var(--green-mid); cursor:pointer; }

.expand-btn {
  background:none; border:none; cursor:pointer;
  color:var(--text-3); font-size:.72rem; padding:4px 6px;
  border-radius:6px; transition:all .2s; line-height:1;
  display:flex; align-items:center; justify-content:center;
  width:26px; height:26px; margin:0 auto;
}
.expand-btn:hover { background:#e8f5ee; color:var(--green-deep); }
.expand-btn i { transition:transform .25s; display:block; }
.expand-btn.expanded i { transform:rotate(90deg); color:var(--orange-mid); }

.av {
  width:30px; height:30px; border-radius:9px;
  background:linear-gradient(135deg,var(--green-light),var(--green-mid));
  display:flex; align-items:center; justify-content:center;
  color:#fff; font-size:.7rem; font-weight:700; flex-shrink:0;
}
.resident-chip { display:flex; align-items:center; gap:8px; }
.res-name { font-weight:700; color:var(--text-1); font-size:.72rem; }
.res-sub  { font-size:.6rem; color:var(--text-3); }

.hh-badge {
  font-family:'DM Mono',monospace; font-size:.62rem;
  background:var(--bg); border:1px solid var(--border);
  border-radius:5px; padding:2px 7px; color:var(--text-2);
}
.hh-qr-link { color:var(--text-3); text-decoration:none; margin-left:4px; font-size:.65rem; transition:color .15s; }
.hh-qr-link:hover { color:var(--green-deep); }

.badge2 {
  display:inline-flex; align-items:center; gap:3px;
  padding:2px 7px; border-radius:20px; font-size:.6rem; font-weight:600;
}
.badge2.green   { background:#e8f5ee; color:var(--green-deep); }
.badge2.orange  { background:#fef0e8; color:var(--orange-deep); }
.badge2.amber   { background:#fff8e8; color:#c08000; }
.badge2.neutral { background:var(--bg); color:var(--text-2); border:1px solid var(--border); }

.action-group { display:inline-flex; gap:4px; }
.act-btn {
  width:26px; height:26px; border-radius:6px; border:1.5px solid var(--border);
  background:var(--surface); display:flex; align-items:center; justify-content:center;
  font-size:.65rem; cursor:pointer; text-decoration:none; transition:all .15s; color:var(--text-3);
}
.act-btn:hover.view   { border-color:#1a56a0; background:#e8f0fe; color:#1a56a0; }
.act-btn:hover.edit   { border-color:var(--green-mid); background:#e8f5ee; color:var(--green-deep); }
.act-btn:hover.delete { border-color:var(--orange-deep); background:#fdf0ee; color:var(--orange-deep); }

/* ── Family panel ── */
.family-row td { padding:0; border:none; }
.family-panel {
  padding:12px 16px 14px 56px;
  border-left:3px solid var(--orange-mid);
  background:linear-gradient(90deg,#fff8f4,var(--surface2));
  animation:slideDown .2s ease;
}
@keyframes slideDown { from{opacity:0;transform:translateY(-6px)}to{opacity:1;transform:none} }
.family-panel-title {
  font-size:.6rem; font-weight:700; text-transform:uppercase; letter-spacing:.6px;
  color:var(--orange-deep); margin-bottom:8px; display:flex; align-items:center; gap:6px;
}
.fam-table { width:100%; border-collapse:collapse; font-size:.67rem; table-layout:fixed; }
.fam-table thead th {
  font-size:.58rem; text-transform:uppercase; letter-spacing:.5px;
  color:var(--text-3); font-weight:700; padding:5px 10px; border-bottom:1px solid var(--border);
  background:transparent; text-align:left; white-space:nowrap;
}
.fam-table td { padding:6px 10px; border-bottom:1px solid rgba(212,230,218,.5); color:var(--text-2); vertical-align:middle; }
.fam-table tbody tr:last-child td { border-bottom:none; }
.fam-table tbody tr:hover td { background:rgba(255,255,255,.7); }
.member-id-badge {
  font-family:'DM Mono',monospace; font-size:.6rem;
  background:var(--bg); border:1px solid var(--border);
  border-radius:4px; padding:1px 6px; color:var(--text-2);
}

/* ── Footer ── */
.table-footer {
  background:var(--surface); border:1px solid var(--border); border-top:none;
  border-radius:0 0 var(--radius) var(--radius);
  padding:10px 16px; display:flex; align-items:center; justify-content:space-between; flex-wrap:wrap; gap:8px;
}
.footer-info { font-size:.68rem; color:var(--text-3); }
.footer-info strong { color:var(--green-deep); }
.footer-actions { display:flex; gap:6px; flex-wrap:wrap; }
.footer-btn {
  display:inline-flex; align-items:center; gap:5px;
  padding:5px 12px; border-radius:7px; border:1.5px solid var(--border);
  background:var(--surface); font-size:.68rem; font-weight:600; color:var(--text-2);
  cursor:pointer; font-family:'Outfit',sans-serif; transition:all .2s;
}
.footer-btn:hover { border-color:var(--green-mid); color:var(--green-deep); background:#e8f5ee; }
.footer-btn:disabled { opacity:.4; cursor:not-allowed; }

.empty-state { text-align:center; padding:40px 20px; color:var(--text-3); }
.empty-state i { font-size:2rem; display:block; margin-bottom:8px; opacity:.3; }
.empty-state p { font-size:.75rem; margin:0; }

.dd-menu { font-size:.72rem; border:1px solid var(--border); border-radius:10px; box-shadow:var(--shadow-md); padding:4px; }
.dd-menu .dropdown-item { border-radius:6px; padding:6px 10px; font-size:.7rem; }
.dd-menu .dropdown-item:hover { background:#e8f5ee; color:var(--green-deep); }

/* pagination link shared style */
.pag-link {
  display:inline-flex; align-items:center; justify-content:center;
  min-width:32px; height:32px; padding:0 8px; border-radius:6px;
  border:1.5px solid var(--border); background:var(--surface);
  color:var(--text-2); text-decoration:none; font-size:.68rem;
  transition:all .2s; font-family:'Outfit',sans-serif;
}
.pag-link:hover { border-color:var(--green-mid); color:var(--green-deep); }
.pag-link.disabled { background:#f0f0f0; color:var(--text-3); opacity:.5; pointer-events:none; }
.pag-link.active { background:linear-gradient(135deg,var(--green-deep),var(--green-mid)); color:#fff; border-color:transparent; font-weight:600; }

/* ════════════════════════════════════════
   MOBILE CARD LIST  (hidden on desktop)
════════════════════════════════════════ */
.resident-cards { display:none; }

.res-card {
  background:var(--surface); border:1px solid var(--border);
  border-radius:var(--radius); margin-bottom:8px; overflow:hidden;
  transition:box-shadow .2s;
}
.res-card.expanded-card { border-color:var(--orange-mid); box-shadow:0 0 0 2px rgba(245,130,32,.15); }

.res-card-main {
  display:flex; align-items:center; gap:10px;
  padding:12px 14px; cursor:pointer;
}
.res-card-check { flex-shrink:0; }
.res-card-av {
  width:38px; height:38px; border-radius:10px; flex-shrink:0;
  background:linear-gradient(135deg,var(--green-light),var(--green-mid));
  display:flex; align-items:center; justify-content:center;
  color:#fff; font-size:.85rem; font-weight:700; overflow:hidden;
}
.res-card-av img { width:100%; height:100%; object-fit:cover; }
.res-card-info { flex:1; min-width:0; }
.res-card-name { font-weight:700; font-size:.82rem; color:var(--text-1); white-space:nowrap; overflow:hidden; text-overflow:ellipsis; }
.res-card-meta { display:flex; align-items:center; gap:6px; margin-top:3px; flex-wrap:wrap; }
.res-card-hh   { font-family:'DM Mono',monospace; font-size:.6rem; background:var(--bg); border:1px solid var(--border); border-radius:4px; padding:1px 6px; color:var(--text-2); }
.res-card-sub  { font-size:.62rem; color:var(--text-3); }
.res-card-badges { display:flex; gap:4px; margin-top:4px; flex-wrap:wrap; }

.res-card-chevron {
  flex-shrink:0; width:28px; height:28px; display:flex; align-items:center; justify-content:center;
  color:var(--text-3); font-size:.75rem; border-radius:6px;
  background:var(--bg); border:1px solid var(--border); transition:all .2s;
}
.res-card.expanded-card .res-card-chevron { background:#fef0e8; border-color:var(--orange-mid); color:var(--orange-mid); }
.res-card.expanded-card .res-card-chevron i { transform:rotate(90deg); }
.res-card-chevron i { transition:transform .25s; }

/* Card action bar */
.res-card-actions {
  display:flex; align-items:center; gap:6px;
  padding:8px 14px; border-top:1px solid var(--border);
  background:var(--bg); justify-content:flex-end;
}
.card-act-btn {
  display:inline-flex; align-items:center; gap:5px;
  padding:6px 12px; border-radius:7px; border:1.5px solid var(--border);
  background:var(--surface); font-size:.68rem; font-weight:600; color:var(--text-2);
  text-decoration:none; cursor:pointer; font-family:'Outfit',sans-serif; transition:all .15s;
}
.card-act-btn.view   { border-color:#c7d9f8; color:#1a56a0; background:#e8f0fe; }
.card-act-btn.edit   { border-color:var(--green-light); color:var(--green-deep); background:#e8f5ee; }
.card-act-btn.delete { border-color:#fca5a5; color:#dc2626; background:#fef2f2; }

/* Card family panel */
.res-card-family {
  border-top:2px solid var(--orange-mid);
  background:linear-gradient(180deg,#fff8f4,var(--surface2));
  padding:12px 14px;
  animation:slideDown .2s ease;
}
.res-card-family-title {
  font-size:.58rem; font-weight:700; text-transform:uppercase; letter-spacing:.6px;
  color:var(--orange-deep); margin-bottom:10px; display:flex; align-items:center; gap:5px;
}
.fam-member-card {
  display:flex; align-items:center; gap:10px;
  padding:8px 10px; border-radius:8px; background:rgba(255,255,255,.8);
  border:1px solid rgba(212,230,218,.6); margin-bottom:6px;
}
.fam-member-card:last-child { margin-bottom:0; }
.fam-av {
  width:28px; height:28px; border-radius:7px; flex-shrink:0;
  background:linear-gradient(135deg,var(--green-light),var(--green-mid));
  display:flex; align-items:center; justify-content:center;
  color:#fff; font-size:.65rem; font-weight:700; overflow:hidden;
}
.fam-av img { width:100%; height:100%; object-fit:cover; }
.fam-info { flex:1; min-width:0; }
.fam-name { font-weight:600; font-size:.72rem; color:var(--text-1); }
.fam-detail { font-size:.6rem; color:var(--text-3); margin-top:1px; }
.fam-qr-btn {
  width:28px; height:28px; border-radius:6px; border:1.5px solid var(--border);
  background:var(--surface); display:flex; align-items:center; justify-content:center;
  font-size:.65rem; color:var(--text-3); text-decoration:none; flex-shrink:0; transition:all .15s;
}
.fam-qr-btn:hover { border-color:var(--green-mid); color:var(--green-deep); }

/* ── Mobile filter toggle ── */
.filter-toggle-btn {
  display:none;
  align-items:center; gap:6px;
  padding:7px 12px; border-radius:8px; border:1.5px solid var(--border);
  background:var(--surface); color:var(--text-2); font-size:.72rem; font-weight:600;
  cursor:pointer; font-family:'Outfit',sans-serif;
}
.filter-panel-mobile { display:none; }

/* ════════════════════════════════════════
   RESPONSIVE
════════════════════════════════════════ */
@media (max-width: 768px) {
  .page-header { padding:12px 14px; border-radius:var(--radius) var(--radius) 0 0; }
  .page-title h5 { font-size:.88rem; }
  /* hide secondary action labels on very small screens */
  .page-actions .btn-label { display:none; }

  /* Filter bar: stack neatly */
  .filter-bar { padding:10px 14px; gap:8px; flex-direction:column; align-items:stretch; }
  .filter-search-row { max-width:100%; }
  .filter-row-2 { flex-wrap:wrap; }
  .filter-select { flex:1; min-width:130px; }

  /* Meta bar */
  .meta-bar { padding:8px 14px; }

  /* Hide desktop table, show card list */
  .table-wrap { display:none; }
  .resident-cards { display:block; padding:10px 0 0; }

  /* Footer adjustments */
  .table-footer { padding:10px 14px; border-radius:0 0 var(--radius) var(--radius); }
  .footer-actions .footer-btn span { display:none; }

  /* Pagination compact */
  .pagination-wrapper { gap:4px; }
}

@media (max-width: 480px) {
  .page-header { gap:8px; }
  .page-actions { gap:4px; }
  .btn-primary-c, .btn-outline-c { padding:6px 10px; font-size:.68rem; }
}
</style>

<?php $familyMemberModel = new \App\Models\FamilyMemberModel(); ?>

<div class="page-wrap">

  <!-- Flash Messages -->
  <?php if(session()->getFlashdata('success')): ?>
  <div class="flash success" id="flash-success">
    <i class="fa-solid fa-circle-check"></i>
    <?= session()->getFlashdata('success') ?>
    <button class="flash-close" onclick="document.getElementById('flash-success').remove()"><i class="fa-solid fa-xmark"></i></button>
  </div>
  <?php endif; ?>
  <?php if(session()->getFlashdata('error')): ?>
  <div class="flash error" id="flash-error">
    <i class="fa-solid fa-circle-exclamation"></i>
    <?= session()->getFlashdata('error') ?>
    <button class="flash-close" onclick="document.getElementById('flash-error').remove()"><i class="fa-solid fa-xmark"></i></button>
  </div>
  <?php endif; ?>

<div class="page-header">
    <div class="page-title">
        <h5><i class="fa-solid fa-users me-2" style="color:var(--green-mid)"></i>Master Residents List</h5>
        <p>
            <span style="display:inline-block;width:6px;height:6px;border-radius:50%;background:var(--green-light);margin-right:5px;vertical-align:middle"></span>
            Total: <strong style="color:var(--green-deep)"><?= count($residents) ?></strong> registered residents
        </p>
    </div>
    <div class="page-actions">
      <a href="/beneficiaries/check-duplicates" class="btn-outline-c" style="border-color: #dc3545; color: #dc3545;">
    <i class="fa-solid fa-circle-exclamation"></i> <span class="btn-label">Check Duplicates</span>
</a>
        <!-- NEW DOWNLOAD IMAGES BUTTON - ADD THIS -->
        <a href="/beneficiaries/download-images" class="btn-outline-c" style="border-color: #4a7a26; color: #4a7a26;">
            <i class="fa-solid fa-download"></i> <span class="btn-label">Images ZIP</span>
        </a>
        
        <div class="dropdown">
            <button class="btn-outline-c dropdown-toggle" type="button" data-bs-toggle="dropdown">
                <i class="fa-solid fa-download"></i> <span class="btn-label">Export</span>
            </button>
            <ul class="dropdown-menu dd-menu">
          <li><a class="dropdown-item" href="/beneficiaries/export" target="_blank">
            <i class="fa-solid fa-print me-2" style="color:var(--green-mid)"></i>Export All (FACED)
          </a></li>
          <li><a class="dropdown-item" href="#" onclick="bulkExport(); return false;">
            <i class="fa-solid fa-file-export me-2" style="color:var(--orange-deep)"></i>Export Selected
          </a></li>
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="/beneficiaries/export-excel" target="_blank">
            <i class="fa-solid fa-file-excel me-2" style="color:#1D6F42"></i>Export All (Excel)
          </a></li>
          <li><a class="dropdown-item" href="#" onclick="bulkExportExcel(); return false;">
            <i class="fa-solid fa-file-excel me-2" style="color:#1D6F42"></i>Export Selected (Excel)
          </a></li>
        </ul>
      </div>
      <a href="/beneficiaries/import" class="btn-outline-c">
        <i class="fa-solid fa-file-import"></i> <span class="btn-label">Import</span>
      </a>
      <a href="/beneficiaries/add" class="btn-primary-c">
        <i class="fa-solid fa-plus"></i> <span class="btn-label">Add Resident</span>
      </a>
    </div>
  </div>

  <!-- Filter Bar -->
  <div class="filter-bar">
    <!-- Search + button -->
    <div class="filter-search-row">
      <div class="filter-input-wrap">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input type="text" class="filter-input" id="searchInput" placeholder="Search name, household #, barangay…">
      </div>
      <button class="btn-primary-c" id="searchBtn" style="padding:7px 14px; flex-shrink:0;">
        <i class="fa-solid fa-magnifying-glass"></i>
      </button>
    </div>
    <!-- Dropdowns + reset + delete -->
    <div class="filter-row-2">
      <select class="filter-select" id="barangayFilter">
        <option value="">All Barangays</option>
        <?php
          $barangays = array_unique(array_column($residents, 'barangay'));
          foreach($barangays as $b): if(!empty($b)):
        ?><option value="<?= $b ?>"><?= $b ?></option><?php endif; endforeach; ?>
      </select>
      <select class="filter-select" id="shelterFilter">
        <option value="">All Shelter Status</option>
        <option value="No Damage">No Damage</option>
        <option value="Partially Damaged">Partially Damaged</option>
        <option value="Totally Damaged">Totally Damaged</option>
      </select>
      <button class="reset-btn" onclick="resetFilters()">
        <i class="fa-solid fa-rotate"></i> Reset
      </button>
      <button class="reset-btn" id="deleteAllBtn" style="border-color:#dc3545; color:#dc3545;">
        <i class="fa-solid fa-trash-can"></i> Delete All
      </button>
    </div>
  </div>

  <!-- Per-page / showing bar -->
  <div class="meta-bar">
    <div class="meta-bar-left">
      <label>Show</label>
      <select id="perPageSelect" class="filter-select" style="width:auto; padding:5px 24px 5px 8px; font-size:.68rem;">
        <option value="10"  <?= ($perPage ?? 10) == 10  ? 'selected' : '' ?>>10</option>
        <option value="25"  <?= ($perPage ?? 10) == 25  ? 'selected' : '' ?>>25</option>
        <option value="50"  <?= ($perPage ?? 10) == 50  ? 'selected' : '' ?>>50</option>
        <option value="100" <?= ($perPage ?? 10) == 100 ? 'selected' : '' ?>>100</option>
        <option value="200" <?= ($perPage ?? 10) == 200 ? 'selected' : '' ?>>200</option>
        <option value="500" <?= ($perPage ?? 10) == 500 ? 'selected' : '' ?>>500</option>
      </select>
      <span>entries</span>
    </div>
    <span style="font-size:.68rem; color:var(--text-3);">
      Showing <?= min(($currentPage ?? 1) * ($perPage ?? 10), ($totalResidents ?? 0)) ?> of <?= $totalResidents ?? 0 ?>
    </span>
  </div>

  <!-- ══════════ DESKTOP TABLE ══════════ -->
  <div class="table-wrap">
    <div class="table-scroll">
      <table class="rt" id="residentsTable">
        <thead>
          <tr>
            <th style="width:36px"><input class="rt-check" type="checkbox" id="selectAll"></th>
            <th style="width:36px;text-align:center"></th>
            <th>Household #</th>
            <th>Family Head</th>
            <th>Contact</th>
            <th>Barangay</th>
            <th>Family Size</th>
            <th>Vulnerable</th>
            <th style="text-align:right;padding-right:16px">Actions</th>
          </tr>
        </thead>
        <tbody>
          <?php if(empty($residents)): ?>
          <tr><td colspan="9">
            <div class="empty-state">
              <i class="fa-solid fa-users-slash"></i>
              <p>No residents found.</p>
            </div>
          </td></tr>
          <?php else: ?>
          <?php foreach($residents as $r):
            $familyMembers    = $familyMemberModel->getByResidentId($r['id']);
            $hasFamilyMembers = !empty($familyMembers);
            $initials = strtoupper(substr($r['first_name'] ?? $r['full_name'] ?? 'R', 0, 1));
            $vulnerableCount = ($r['vulnerable_older_persons']??0)+($r['vulnerable_pregnant']??0)+($r['vulnerable_lactating']??0)+($r['vulnerable_pwd']??0);
          ?>
          <tr class="main-row"
              data-search="<?= strtolower($r['last_name'].' '.$r['first_name'].' '.$r['household_no'].' '.($r['barangay']??'')) ?>"
              data-barangay="<?= $r['barangay'] ?? '' ?>"
              data-shelter="<?= $r['shelter_damage'] ?? 'No Damage' ?>"
              data-id="<?= $r['id'] ?>">

            <td><input class="rt-check row-checkbox" type="checkbox" value="<?= $r['id'] ?>"></td>
            <td style="text-align:center;padding:4px;">
              <?php if($hasFamilyMembers): ?>
              <button class="expand-btn" onclick="toggleFamily(<?= $r['id'] ?>, this)">
                <i class="fa-solid fa-chevron-right"></i>
              </button>
              <?php else: ?>
              <span style="display:block;width:26px;height:26px"></span>
              <?php endif; ?>
            </td>
            <td>
              <span class="hh-badge"><?= $r['household_no'] ?></span>
              <?php if(!empty($r['qr_code_token'])): ?>
              <a href="/residentportal/generateQR/<?= $r['id'] ?>" class="hh-qr-link" target="_blank" title="Head QR"><i class="fa-solid fa-user"></i></a>
              <?php endif; ?>
              <a href="/beneficiaries/view-household-qr/<?= $r['id'] ?>" class="hh-qr-link" target="_blank" title="Household QR"><i class="fa-solid fa-house"></i></a>
            </td>
            <td>
              <div class="resident-chip">
                <?php if(!empty($r['photo'])): ?>
                  <div class="av" style="background:none;overflow:hidden;">
                    <img src="<?= base_url($r['photo']) ?>" alt="Photo" style="width:100%;height:100%;object-fit:cover;border-radius:9px;">
                  </div>
                <?php else: ?>
                  <div class="av"><?= $initials ?></div>
                <?php endif; ?>
                <div>
                  <div class="res-name"><?= $r['last_name'] ?>, <?= $r['first_name'] ?></div>
                  <div class="res-sub"><?= $r['age'] ?> yrs &bull; <?= $r['sex'] ?></div>
                </div>
              </div>
            </td>
            <td><span class="mono" style="font-size:.65rem;color:var(--text-3)"><?= $r['contact_number'] ?: '—' ?></span></td>
            <td><span class="badge2 neutral"><?= $r['barangay'] ?: '—' ?></span></td>
            <td><span class="badge2 green"><i class="fa-solid fa-users" style="font-size:.55rem"></i><?= $r['family_size'] ?? 1 ?></span></td>
            <td>
              <?php if($vulnerableCount > 0): ?>
                <span class="badge2 amber"><i class="fa-solid fa-heart-pulse" style="font-size:.55rem"></i><?= $vulnerableCount ?></span>
              <?php else: ?><span style="color:var(--text-3);font-size:.65rem">—</span><?php endif; ?>
            </td>
            <td>
              <div class="action-group">
                <a href="/beneficiaries/view/<?= $r['id'] ?>"   class="act-btn view"   title="View"><i class="fa-solid fa-eye"></i></a>
                <a href="/beneficiaries/edit/<?= $r['id'] ?>"   class="act-btn edit"   title="Edit"><i class="fa-solid fa-pen"></i></a>
                <a href="/beneficiaries/delete/<?= $r['id'] ?>" class="act-btn delete" title="Delete" onclick="return confirm('Delete this record?')"><i class="fa-solid fa-trash"></i></a>
              </div>
            </td>
          </tr>

          <!-- Family expand row (desktop) -->
          <?php if($hasFamilyMembers): ?>
          <tr id="family-<?= $r['id'] ?>" class="family-row" style="display:none">
            <td colspan="9">
              <div class="family-panel">
                <div class="family-panel-title"><i class="fa-solid fa-people-group"></i>Family Members (<?= count($familyMembers) ?>)</div>
                <table class="fam-table">
                  <thead>
                    <tr>
                      <th>Member ID</th><th>Name</th><th>Relation</th>
                      <th>Age</th><th>Sex</th><th>Education</th><th>Occupation</th><th style="text-align:center">QR</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach($familyMembers as $member):
                      $mi = strtoupper(substr($member['name'] ?? 'M', 0, 1));
                    ?>
                    <tr>
                      <td><span class="member-id-badge"><?= $member['member_id'] ?? '—' ?></span></td>
                      <td style="font-weight:600;color:var(--text-1)">
                        <div style="display:flex;align-items:center;gap:8px;">
                          <?php if(!empty($member['photo'])): ?>
                            <div style="width:24px;height:24px;border-radius:6px;overflow:hidden;flex-shrink:0;">
                              <img src="<?= base_url($member['photo']) ?>" alt="Photo" style="width:100%;height:100%;object-fit:cover;">
                            </div>
                          <?php else: ?>
                            <div style="width:24px;height:24px;border-radius:6px;background:linear-gradient(135deg,var(--green-light),var(--green-mid));display:flex;align-items:center;justify-content:center;color:#fff;font-size:.6rem;font-weight:700;flex-shrink:0;"><?= $mi ?></div>
                          <?php endif; ?>
                          <span><?= $member['name'] ?></span>
                        </div>
                      </td>
                      <td><?= $member['relation'] ?></td>
                      <td><?= $member['age'] ?></td>
                      <td><?= $member['sex'] ?></td>
                      <td><?= $member['education'] ?></td>
                      <td><?= $member['occupation'] ?></td>
                      <td style="text-align:center">
                        <?php if(!empty($member['qr_code_token'])): ?>
                          <a href="/residentportal/view-member-qr/<?= $r['id'] ?>/<?= $member['id'] ?>" class="act-btn view" target="_blank" style="display:inline-flex;margin:0 auto"><i class="fa-solid fa-qrcode"></i></a>
                        <?php endif; ?>
                      </td>
                    </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div>
            </td>
          </tr>
          <?php endif; ?>

          <?php endforeach; ?>
          <?php endif; ?>
        </tbody>
      </table>
    </div>
  </div>

  <!-- ══════════ MOBILE CARD LIST ══════════ -->
  <div class="resident-cards" id="residentCards">
    <?php if(empty($residents)): ?>
      <div class="empty-state"><i class="fa-solid fa-users-slash"></i><p>No residents found.</p></div>
    <?php else: ?>

    <!-- Mobile bulk select bar -->
    <div style="display:flex;align-items:center;justify-content:space-between;padding:8px 2px 10px;gap:8px;">
      <label style="display:flex;align-items:center;gap:8px;font-size:.72rem;color:var(--text-2);font-weight:600;cursor:pointer;">
        <input type="checkbox" id="selectAllMobile" style="width:15px;height:15px;accent-color:var(--green-mid);">
        Select all
      </label>
      <div style="display:flex;gap:6px;">
        <button class="footer-btn" id="bulkPrintBtnMob" disabled onclick="bulkPrintQR()"><i class="fa-solid fa-qrcode"></i> QR</button>
        <button class="footer-btn" id="bulkExportBtnMob" disabled onclick="bulkExport()"><i class="fa-solid fa-file-export"></i> Export</button>
      </div>
    </div>

    <?php foreach($residents as $r):
      $familyMembers    = $familyMemberModel->getByResidentId($r['id']);
      $hasFamilyMembers = !empty($familyMembers);
      $initials = strtoupper(substr($r['first_name'] ?? $r['full_name'] ?? 'R', 0, 1));
      $vulnerableCount = ($r['vulnerable_older_persons']??0)+($r['vulnerable_pregnant']??0)+($r['vulnerable_lactating']??0)+($r['vulnerable_pwd']??0);
    ?>
    <div class="res-card"
         id="mcard-<?= $r['id'] ?>"
         data-search="<?= strtolower($r['last_name'].' '.$r['first_name'].' '.$r['household_no'].' '.($r['barangay']??'')) ?>"
         data-barangay="<?= $r['barangay'] ?? '' ?>"
         data-shelter="<?= $r['shelter_damage'] ?? 'No Damage' ?>">

      <div class="res-card-main" onclick="toggleCardFamily(<?= $r['id'] ?>, this)">
        <!-- Checkbox -->
        <div class="res-card-check" onclick="event.stopPropagation()">
          <input type="checkbox" class="row-checkbox mob-checkbox" value="<?= $r['id'] ?>"
                 style="width:15px;height:15px;accent-color:var(--green-mid);cursor:pointer;">
        </div>

        <!-- Avatar -->
        <div class="res-card-av">
          <?php if(!empty($r['photo'])): ?>
            <img src="<?= base_url($r['photo']) ?>" alt="Photo">
          <?php else: ?>
            <?= $initials ?>
          <?php endif; ?>
        </div>

        <!-- Info -->
        <div class="res-card-info">
          <div class="res-card-name"><?= $r['last_name'] ?>, <?= $r['first_name'] ?></div>
          <div class="res-card-meta">
            <span class="res-card-hh"><?= $r['household_no'] ?></span>
            <span class="res-card-sub"><?= $r['age'] ?>y &bull; <?= $r['sex'] ?></span>
          </div>
          <div class="res-card-badges">
            <?php if(!empty($r['barangay'])): ?>
              <span class="badge2 neutral" style="font-size:.58rem"><?= $r['barangay'] ?></span>
            <?php endif; ?>
            <span class="badge2 green" style="font-size:.58rem"><i class="fa-solid fa-users" style="font-size:.5rem"></i><?= $r['family_size'] ?? 1 ?></span>
            <?php if($vulnerableCount > 0): ?>
              <span class="badge2 amber" style="font-size:.58rem"><i class="fa-solid fa-heart-pulse" style="font-size:.5rem"></i><?= $vulnerableCount ?></span>
            <?php endif; ?>
          </div>
        </div>

        <!-- Chevron (only if has family) -->
        <?php if($hasFamilyMembers): ?>
        <div class="res-card-chevron"><i class="fa-solid fa-chevron-right"></i></div>
        <?php else: ?>
        <div style="width:28px;flex-shrink:0"></div>
        <?php endif; ?>
      </div>

      <!-- Action bar -->
      <div class="res-card-actions">
        <?php if(!empty($r['qr_code_token'])): ?>
          <a href="/residentportal/generateQR/<?= $r['id'] ?>" class="card-act-btn view" target="_blank"><i class="fa-solid fa-qrcode"></i> QR</a>
        <?php endif; ?>
        <a href="/beneficiaries/view/<?= $r['id'] ?>" class="card-act-btn view"><i class="fa-solid fa-eye"></i> View</a>
        <a href="/beneficiaries/edit/<?= $r['id'] ?>" class="card-act-btn edit"><i class="fa-solid fa-pen"></i> Edit</a>
        <a href="/beneficiaries/delete/<?= $r['id'] ?>" class="card-act-btn delete" onclick="return confirm('Delete this record?')"><i class="fa-solid fa-trash"></i></a>
      </div>

      <!-- Family panel (mobile) -->
      <?php if($hasFamilyMembers): ?>
      <div class="res-card-family" id="mfamily-<?= $r['id'] ?>" style="display:none">
        <div class="res-card-family-title"><i class="fa-solid fa-people-group"></i>Family Members (<?= count($familyMembers) ?>)</div>
        <?php foreach($familyMembers as $member):
          $mi = strtoupper(substr($member['name'] ?? 'M', 0, 1));
        ?>
        <div class="fam-member-card">
          <div class="fam-av">
            <?php if(!empty($member['photo'])): ?>
              <img src="<?= base_url($member['photo']) ?>" alt="">
            <?php else: ?>
              <?= $mi ?>
            <?php endif; ?>
          </div>
          <div class="fam-info">
            <div class="fam-name"><?= $member['name'] ?></div>
            <div class="fam-detail"><?= $member['relation'] ?> &bull; <?= $member['age'] ?>y &bull; <?= $member['sex'] ?></div>
            <?php if(!empty($member['occupation'])): ?>
              <div class="fam-detail" style="color:var(--text-3)"><?= $member['occupation'] ?></div>
            <?php endif; ?>
          </div>
          <?php if(!empty($member['member_id'])): ?>
            <span class="member-id-badge" style="font-size:.55rem"><?= $member['member_id'] ?></span>
          <?php endif; ?>
          <?php if(!empty($member['qr_code_token'])): ?>
            <a href="/residentportal/view-member-qr/<?= $r['id'] ?>/<?= $member['id'] ?>" class="fam-qr-btn" target="_blank">
              <i class="fa-solid fa-qrcode"></i>
            </a>
          <?php endif; ?>
        </div>
        <?php endforeach; ?>
      </div>
      <?php endif; ?>

    </div>
    <?php endforeach; ?>
    <?php endif; ?>
  </div>

  <!-- ══ Footer ══ -->
  <?php if(!empty($residents)): ?>
  <div class="table-footer" style="flex-direction:column;gap:12px;">
    <div style="display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:8px;width:100%;">
      <div class="footer-info">
        <strong id="selectedCount">0</strong> of <?= count($residents) ?> selected &bull; page <?= $currentPage ?? 1 ?> of <?= $totalPages ?? 1 ?>
      </div>
      <div class="footer-actions">
        <button class="footer-btn" onclick="expandAll()"><i class="fa-solid fa-chevron-down"></i> <span>Expand All</span></button>
        <button class="footer-btn" onclick="collapseAll()"><i class="fa-solid fa-chevron-up"></i> <span>Collapse All</span></button>
        <button class="footer-btn" id="bulkPrintBtn"  disabled onclick="bulkPrintQR()"><i class="fa-solid fa-qrcode"></i> <span>Print QR</span></button>
        <button class="footer-btn" id="bulkExportBtn" disabled onclick="bulkExport()"><i class="fa-solid fa-file-export"></i> <span>Export</span></button>
      </div>
    </div>

    <!-- Pagination -->
    <?php if(($totalPages ?? 1) > 1): ?>
    <div class="pagination-wrapper" style="display:flex;align-items:center;justify-content:center;gap:4px;flex-wrap:wrap;border-top:1px solid var(--border);padding-top:12px;margin-top:4px;width:100%;">
      <?php
        $current = $currentPage ?? 1;
        $total   = $totalPages ?? 1;
        $qp = $_GET; unset($qp['page']);
        $base = '?' . http_build_query($qp);
      ?>
      <a href="<?= $current > 1 ? $base.'&page=1' : '#' ?>"      class="pag-link <?= $current == 1    ? 'disabled' : '' ?>">«</a>
      <a href="<?= $current > 1 ? $base.'&page='.($current-1) : '#' ?>" class="pag-link <?= $current == 1    ? 'disabled' : '' ?>">‹</a>

      <?php $s = max(1,$current-2); $e = min($total,$current+2); ?>
      <?php if($s > 1): ?><span style="padding:0 2px;font-size:.65rem;color:var(--text-3)">…</span><?php endif; ?>
      <?php for($i=$s;$i<=$e;$i++): ?>
        <a href="<?= $base.'&page='.$i ?>" class="pag-link <?= $i==$current ? 'active' : '' ?>"><?= $i ?></a>
      <?php endfor; ?>
      <?php if($e < $total): ?><span style="padding:0 2px;font-size:.65rem;color:var(--text-3)">…</span><?php endif; ?>

      <a href="<?= $current < $total ? $base.'&page='.($current+1) : '#' ?>" class="pag-link <?= $current==$total ? 'disabled' : '' ?>">›</a>
      <a href="<?= $current < $total ? $base.'&page='.$total : '#' ?>"       class="pag-link <?= $current==$total ? 'disabled' : '' ?>">»</a>

      <div style="display:flex;align-items:center;gap:5px;margin-left:6px;">
        <span style="font-size:.65rem;color:var(--text-3);">Go:</span>
        <input type="number" id="gotoPage" min="1" max="<?= $total ?>" value="<?= $current ?>"
               style="width:48px;padding:4px 6px;border:1.5px solid var(--border);border-radius:6px;font-size:.65rem;text-align:center;font-family:'Outfit',sans-serif;">
        <button onclick="gotoPage()" style="padding:4px 8px;border-radius:6px;border:1.5px solid var(--green-mid);background:var(--surface);color:var(--green-deep);font-size:.65rem;cursor:pointer;font-family:'Outfit',sans-serif;">Go</button>
      </div>
    </div>
    <?php endif; ?>
  </div>
  <?php endif; ?>

</div><!-- /page-wrap -->


<!-- Delete All Modal -->
<div id="deleteAllModal" style="display:none;position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.5);z-index:9999;align-items:center;justify-content:center;padding:16px;">
  <div style="background:var(--surface);border-radius:var(--radius);max-width:440px;width:100%;box-shadow:0 20px 60px rgba(0,0,0,.2);animation:fadeUp .2s ease;">
    <div style="padding:18px 22px;border-bottom:1px solid var(--border);">
      <h4 style="margin:0;color:#dc3545;display:flex;align-items:center;gap:10px;font-size:.95rem;">
        <i class="fa-solid fa-triangle-exclamation"></i> Delete All Residents
      </h4>
    </div>
    <div style="padding:18px 22px;">
      <p style="margin:0 0 12px;color:var(--text-2);font-size:.8rem;">
        <strong>Warning:</strong> This will permanently delete <span id="deleteCount">0</span> resident record(s) and all their family members.
      </p>
      <p style="margin:0 0 16px;color:var(--text-3);font-size:.72rem;">
        This action cannot be undone. All associated data including photos, signatures, and family member records will be permanently removed.
      </p>
      <label style="display:flex;align-items:center;gap:10px;cursor:pointer;padding:10px;background:#fff8e8;border-radius:8px;">
        <input type="checkbox" id="confirmDeleteCheckbox" style="width:18px;height:18px;accent-color:#dc3545;">
        <span style="font-size:.73rem;color:var(--text-1);">I understand this action is <strong>irreversible</strong>.</span>
      </label>
    </div>
    <div style="padding:14px 22px;border-top:1px solid var(--border);display:flex;justify-content:flex-end;gap:8px;">
      <button class="reset-btn" onclick="closeDeleteModal()">Cancel</button>
      <button id="confirmDeleteBtn" class="btn-primary-c" style="background:linear-gradient(135deg,#dc3545,#c82333);box-shadow:none;" disabled>
        <i class="fa-solid fa-trash-can"></i> Delete Permanently
      </button>
    </div>
  </div>
</div>


<script>
// ── Server-side Filter (reloads page with filters) ──
document.getElementById('barangayFilter').addEventListener('change', applyFilters);
document.getElementById('shelterFilter').addEventListener('change', applyFilters);
document.getElementById('searchBtn').addEventListener('click', applyFilters);
document.getElementById('searchInput').addEventListener('keypress', function(e) { 
    if(e.key === 'Enter') applyFilters(); 
});

function applyFilters() {
    const url = new URL(window.location.href);
    const search = document.getElementById('searchInput').value.trim();
    const barangay = document.getElementById('barangayFilter').value;
    const shelter = document.getElementById('shelterFilter').value;
    
    // Set or remove search parameter
    if (search) {
        url.searchParams.set('search', search);
    } else {
        url.searchParams.delete('search');
    }
    
    // Set or remove barangay parameter
    if (barangay) {
        url.searchParams.set('barangay', barangay);
    } else {
        url.searchParams.delete('barangay');
    }
    
    // Set or remove shelter parameter
    if (shelter) {
        url.searchParams.set('shelter_damage', shelter);
    } else {
        url.searchParams.delete('shelter_damage');
    }
    
    // Reset to page 1 when filters change
    url.searchParams.delete('page');
    
    // Navigate to the new URL
    window.location.href = url.toString();
}

function resetFilters() {
    const url = new URL(window.location.href);
    url.searchParams.delete('search');
    url.searchParams.delete('barangay');
    url.searchParams.delete('shelter_damage');
    url.searchParams.delete('page');
    window.location.href = url.toString();
}

// ── Desktop expand/collapse ──
function toggleFamily(id, btn) {
  const fr   = document.getElementById('family-' + id);
  const main = document.querySelector(`.main-row[data-id="${id}"]`);
  if(!fr) return;
  const showing = fr.style.display === 'table-row';
  fr.style.display = showing ? 'none' : 'table-row';
  btn.classList.toggle('expanded', !showing);
  main.classList.toggle('expanded-active', !showing);
}

function expandAll() {
  document.querySelectorAll('.expand-btn').forEach(btn => {
    const id = btn.closest('.main-row').dataset.id;
    const fr = document.getElementById('family-' + id);
    if(fr) { fr.style.display='table-row'; btn.classList.add('expanded'); btn.closest('.main-row').classList.add('expanded-active'); }
  });
}
function collapseAll() {
  document.querySelectorAll('.expand-btn').forEach(btn => {
    const id = btn.closest('.main-row').dataset.id;
    const fr = document.getElementById('family-' + id);
    if(fr) { fr.style.display='none'; btn.classList.remove('expanded'); btn.closest('.main-row').classList.remove('expanded-active'); }
  });
}

// ── Mobile card expand ──
function toggleCardFamily(id, mainEl) {
  const panel = document.getElementById('mfamily-' + id);
  const card  = document.getElementById('mcard-' + id);
  if(!panel) return;
  const showing = panel.style.display !== 'none';
  panel.style.display = showing ? 'none' : 'block';
  card.classList.toggle('expanded-card', !showing);
}

// Click on desktop rows also triggers expand
document.querySelectorAll('.main-row').forEach(row => {
  row.addEventListener('click', function(e) {
    if(e.target.closest('.form-check, input[type=checkbox], button, a')) return;
    const btn = this.querySelector('.expand-btn');
    if(btn) btn.click();
  });
});

// ── Checkbox / selected count ──
function updateSelectedCount() {
  const n = document.querySelectorAll('.row-checkbox:checked').length;
  document.getElementById('selectedCount').textContent = n;
  ['bulkPrintBtn','bulkExportBtn','bulkPrintBtnMob','bulkExportBtnMob'].forEach(id => {
    const el = document.getElementById(id);
    if(el) el.disabled = n === 0;
  });
}

document.getElementById('selectAll').addEventListener('change', function(e) {
  document.querySelectorAll('.row-checkbox').forEach(cb => {
    if(cb.closest('.main-row')?.style.display !== 'none') cb.checked = e.target.checked;
  });
  updateSelectedCount();
});

// Sync mobile select-all
document.getElementById('selectAllMobile')?.addEventListener('change', function(e) {
  document.querySelectorAll('.mob-checkbox').forEach(cb => {
    if(cb.closest('.res-card')?.style.display !== 'none') cb.checked = e.target.checked;
  });
  // Also sync desktop checkboxes
  document.querySelectorAll('.row-checkbox:not(.mob-checkbox)').forEach(cb => cb.checked = e.target.checked);
  updateSelectedCount();
});

document.querySelectorAll('.row-checkbox').forEach(cb => cb.addEventListener('change', updateSelectedCount));

function bulkPrintQR() {
  const ids = Array.from(document.querySelectorAll('.row-checkbox:checked')).map(cb=>cb.value).join(',');
  if(ids) window.open('/residentportal/bulk-qr/' + ids, '_blank');
}
function bulkExport() {
  const ids = Array.from(document.querySelectorAll('.row-checkbox:checked')).map(cb=>cb.value).join(',');
  if(ids) window.open('/beneficiaries/export-selected/' + ids, '_blank');
}
function bulkExportExcel() {
  const selected = document.querySelectorAll('.row-checkbox:checked');
  if(selected.length === 0) { alert('Please select at least one resident to export.'); return; }
  const ids = Array.from(selected).map(cb => cb.value).join(',');
  window.open('/beneficiaries/export-excel-selected/' + ids, '_blank');
}

// ── Per page ──
document.getElementById('perPageSelect')?.addEventListener('change', function() {
  const url = new URL(window.location.href);
  url.searchParams.set('per_page', this.value);
  url.searchParams.delete('page');
  window.location.href = url.toString();
});

// ── Go to page ──
function gotoPage() {
  const input = document.getElementById('gotoPage');
  let page = parseInt(input.value);
  const max = parseInt(input.getAttribute('max'));
  if(isNaN(page) || page < 1) page = 1;
  if(page > max) page = max;
  const url = new URL(window.location.href);
  url.searchParams.set('page', page);
  window.location.href = url.toString();
}
document.getElementById('gotoPage')?.addEventListener('keypress', e => { if(e.key==='Enter') gotoPage(); });

// ── Delete All ──
let deleteAllResidentIds = [];

function openDeleteModal() {
  const modal = document.getElementById('deleteAllModal');
  const countSpan = document.getElementById('deleteCount');
  countSpan.innerHTML = '<i class="fa-solid fa-spinner fa-spin"></i>';
  document.getElementById('confirmDeleteCheckbox').checked = false;
  document.getElementById('confirmDeleteBtn').disabled = true;
  modal.style.display = 'flex';

  fetch('/beneficiaries/get-all-ids', { method:'GET', headers:{'X-Requested-With':'XMLHttpRequest'} })
    .then(r => r.json())
    .then(result => {
      if(result.success && result.ids?.length > 0) {
        deleteAllResidentIds = result.ids;
        countSpan.textContent = deleteAllResidentIds.length;
      } else {
        deleteAllResidentIds = [];
        countSpan.textContent = '0';
        alert('No residents found to delete.');
        closeDeleteModal();
      }
    })
    .catch(() => { alert('Failed to load resident list.'); closeDeleteModal(); });
}

function closeDeleteModal() {
  document.getElementById('deleteAllModal').style.display = 'none';
  deleteAllResidentIds = [];
}

document.getElementById('confirmDeleteCheckbox')?.addEventListener('change', function(e) {
  document.getElementById('confirmDeleteBtn').disabled = !e.target.checked;
});

document.getElementById('confirmDeleteBtn')?.addEventListener('click', async function() {
  if(!deleteAllResidentIds.length) { closeDeleteModal(); return; }
  this.disabled = true;
  this.innerHTML = '<i class="fa-solid fa-spinner fa-spin"></i> Deleting…';
  try {
    const res = await fetch('/beneficiaries/delete-all', {
      method:'POST',
      headers:{'Content-Type':'application/json','X-Requested-With':'XMLHttpRequest'},
      body: JSON.stringify({ ids: deleteAllResidentIds, csrf_test_name: document.querySelector('input[name="csrf_test_name"]')?.value || '' })
    });
    const result = await res.json();
    if(result.success) window.location.href = window.location.pathname + window.location.search;
    else { alert('Error: ' + (result.message || 'Failed to delete residents')); closeDeleteModal(); }
  } catch(e) { alert('An error occurred. Please try again.'); closeDeleteModal(); }
});

document.getElementById('deleteAllBtn')?.addEventListener('click', openDeleteModal);
document.getElementById('deleteAllModal')?.addEventListener('click', function(e) { if(e.target === this) closeDeleteModal(); });
</script>

<?= $this->endSection() ?>