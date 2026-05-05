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

.page-wrap { animation: fadeUp .45s ease both; max-width: 600px; margin: 0 auto; }
@keyframes fadeUp { from{opacity:0;transform:translateY(14px)}to{opacity:1;transform:none} }

/* ── Page Header ── */
.page-header {
  display:flex; align-items:center; justify-content:space-between; flex-wrap:wrap; gap:10px;
  background:var(--surface); border-radius:var(--radius) var(--radius) 0 0;
  padding:16px 20px; border:1px solid var(--border); border-bottom:none;
}
.page-title h5 { font-size:1rem; font-weight:800; color:var(--text-1); margin:0; letter-spacing:-.2px; }
.page-title p  { font-size:.68rem; color:var(--text-3); margin:2px 0 0; }

/* ── Main body panel ── */
.page-body {
  background:var(--surface); border:1px solid var(--border); border-top:none;
  border-radius:0 0 var(--radius) var(--radius);
  padding:20px;
}

/* ── Mode toggle (Attendance / Distribution) ── */
.mode-toggle {
  display:grid; grid-template-columns:1fr 1fr; gap:8px; margin-bottom:14px;
}
.mode-toggle input[type=radio] { display:none; }
.mode-card {
  border:1.5px solid var(--border); border-radius:var(--radius-sm);
  padding:12px 14px; cursor:pointer; transition:all .2s;
  text-align:center;
}
.mode-card:hover { border-color:var(--green-mid); background:var(--surface2); }
.mode-card .mc-icon { font-size:1.1rem; margin-bottom:4px; }
.mode-card .mc-title { font-size:.78rem; font-weight:700; color:var(--text-1); display:block; }
.mode-card .mc-sub   { font-size:.62rem; color:var(--text-3); display:block; margin-top:1px; }
.mode-toggle input:checked + .mode-card {
  border-color:var(--green-mid);
  background:var(--surface2);
  box-shadow:0 0 0 3px rgba(119,188,63,.12);
}
.mode-toggle input:checked + .mode-card .mc-icon { color:var(--green-deep); }
.mode-toggle input:checked + .mode-card .mc-title { color:var(--green-deep); }

/* ── Scanner type toggle (Camera / Hardware) — hidden on mobile ── */
.scanner-type-toggle {
  display:grid; grid-template-columns:1fr 1fr; gap:8px; margin-bottom:14px;
}
.scanner-type-toggle input[type=radio] { display:none; }
.stype-card {
  border:1.5px solid var(--border); border-radius:var(--radius-sm);
  padding:8px 12px; cursor:pointer; transition:all .2s;
  display:flex; align-items:center; justify-content:center; gap:7px;
  font-size:.72rem; font-weight:600; color:var(--text-2);
}
.stype-card:hover { border-color:var(--green-mid); color:var(--green-deep); background:var(--surface2); }
.scanner-type-toggle input:checked + .stype-card {
  border-color:var(--green-mid); background:var(--surface2);
  color:var(--green-deep); box-shadow:0 0 0 3px rgba(119,188,63,.12);
}

/* Hide scanner type toggle entirely on mobile */
@media(max-width:640px) {
  .scanner-type-wrap { display:none !important; }
}

/* ── Mode description banner ── */
.mode-banner {
  display:flex; align-items:center; gap:8px;
  padding:9px 14px; border-radius:var(--radius-sm);
  font-size:.72rem; font-weight:600;
  margin-bottom:14px; border:1px solid;
  transition:all .3s;
}
.mode-banner.attendance   { background:#eff6ff; color:#1d4ed8; border-color:#bfdbfe; }
.mode-banner.distribution { background:var(--surface2); color:var(--green-deep); border-color:var(--green-glow); }

/* ── Camera viewer ── */
.camera-wrap {
  border-radius:var(--radius); overflow:hidden;
  border:1px solid var(--border); background:#000;
  box-shadow:var(--shadow-md);
}
.camera-wrap #reader { width:100%; min-height:340px; }
.camera-status {
  background:#111827; color:#9ca3af; padding:10px 16px;
  display:flex; align-items:center; gap:8px; font-size:.7rem; font-weight:600;
}
.scan-pulse {
  width:8px; height:8px; border-radius:50%; background:var(--green-mid);
  animation:pulse 1.5s ease-in-out infinite; flex-shrink:0;
}
@keyframes pulse { 0%,100%{opacity:1;transform:scale(1)} 50%{opacity:.4;transform:scale(.8)} }

/* ── Hardware scanner panel ── */
.hw-panel {
  border:1px solid var(--border); border-radius:var(--radius); overflow:hidden;
}
.hw-panel-header {
  background:#1e293b; color:#f8fafc;
  padding:12px 16px; display:flex; align-items:center; gap:8px;
  font-size:.78rem; font-weight:700;
}
.hw-panel-body { padding:16px; }
.hw-info-box {
  background:var(--surface2); border:1px solid var(--green-glow);
  border-radius:var(--radius-sm); padding:10px 14px;
  font-size:.7rem; color:var(--green-deep); margin-bottom:14px;
  display:flex; align-items:flex-start; gap:8px;
}
.field-label { display:block; font-size:.7rem; font-weight:700; color:var(--text-2); margin-bottom:5px; }
.form-control {
  width:100%; border:1.5px solid var(--border); border-radius:var(--radius-sm);
  padding:10px 12px; font-size:.82rem; font-family:'DM Mono',monospace;
  color:var(--text-1); background:var(--surface);
  transition:border-color .2s, box-shadow .2s; outline:none;
}
.form-control:focus {
  border-color:var(--green-mid);
  box-shadow:0 0 0 3px rgba(119,188,63,.12);
}
.hw-status {
  display:flex; align-items:center; gap:8px;
  padding:9px 14px; border-radius:var(--radius-sm);
  font-size:.72rem; font-weight:600; margin-top:12px; border:1px solid;
}
.hw-status.ready       { background:var(--surface2); color:var(--green-deep); border-color:var(--green-glow); }
.hw-status.processing  { background:#eff6ff; color:#1d4ed8; border-color:#bfdbfe; }
.hw-status.warning     { background:#fffbeb; color:#92400e; border-color:#fde68a; }
.hw-status.error       { background:#fff1f2; color:#c0392b; border-color:#fecaca; }
.hw-status.idle        { background:var(--bg); color:var(--text-3); border-color:var(--border); }

.hw-result { margin-top:12px; }
.hw-result-inner {
  background:#eff6ff; border:1px solid #bfdbfe; border-radius:var(--radius-sm);
  padding:12px 14px; display:flex; align-items:center; gap:10px;
  font-size:.72rem; color:#1d4ed8;
}

.hw-panel-footer {
  padding:10px 16px; border-top:1px solid var(--border); background:var(--bg);
  display:flex; align-items:center; justify-content:space-between;
}
.hw-panel-footer span { font-size:.65rem; color:var(--text-3); }

/* ── Buttons ── */
.btn-primary-c {
  display:inline-flex; align-items:center; gap:5px;
  background:linear-gradient(135deg,var(--green-deep),var(--green-mid));
  color:#fff; border:none; border-radius:8px;
  padding:6px 14px; font-size:.7rem; font-weight:600;
  text-decoration:none; cursor:pointer; transition:all .2s;
  box-shadow:0 4px 12px rgba(119,188,63,.3); font-family:'Outfit',sans-serif;
}
.btn-primary-c:hover { transform:translateY(-1px); color:#fff; }

.btn-outline-c {
  display:inline-flex; align-items:center; gap:5px;
  background:transparent; color:var(--text-2);
  border:1.5px solid var(--border); border-radius:8px;
  padding:5px 10px; font-size:.68rem; font-weight:600;
  text-decoration:none; cursor:pointer; transition:all .2s; font-family:'Outfit',sans-serif;
}
.btn-outline-c:hover { border-color:var(--green-mid); color:var(--green-deep); background:var(--surface2); }

/* ── Account info bar ── */
.account-bar {
  display:flex; align-items:center; justify-content:space-between;
  background:var(--surface); border:1px solid var(--border); border-top:none;
  padding:12px 20px;
}
.account-bar-left .acc-label { font-size:.62rem; color:var(--text-3); font-weight:600; text-transform:uppercase; letter-spacing:.4px; }
.account-bar-left .acc-name  { font-size:.82rem; font-weight:800; color:var(--text-1); }
.account-bar-right { display:flex; align-items:center; gap:8px; }

/* ── Quick Stats ── */
.quick-stats {
  display:grid; grid-template-columns:1fr 1fr; gap:10px;
  background:var(--surface); border:1px solid var(--border); border-top:none;
  border-radius:0 0 var(--radius) var(--radius);
  padding:14px 20px;
}
.stat-card {
  background:var(--bg); border:1px solid var(--border); border-radius:var(--radius-sm);
  padding:12px 14px;
}
.stat-card .sc-label { font-size:.62rem; font-weight:600; text-transform:uppercase; letter-spacing:.5px; color:var(--text-3); margin-bottom:4px; }
.stat-card .sc-val   { font-size:1.8rem; font-weight:800; line-height:1; color:var(--text-1); font-family:'DM Mono',monospace; }

#hardwareScanInput:focus {
    caret-color: transparent; /* Hides the blinking cursor */
}
</style>

<div class="page-wrap">

  <!-- Page Header -->
  <div class="page-header">
    <div class="page-title">
      <h5><i class="fa-solid fa-qrcode me-2" style="color:var(--green-mid)"></i>QR Code Scanner</h5>
      <p>Select scan mode and point camera at QR code</p>
    </div>
  </div>

  <!-- Main Body -->
  <div class="page-body">

    <!-- Scan Mode: Attendance / Distribution -->
    <div class="mode-toggle">
      <input type="radio" name="scanMode" id="attendanceMode" value="attendance" autocomplete="off" checked>
      <label class="mode-card" for="attendanceMode">
        <div class="mc-icon"><i class="fa-solid fa-calendar-check" style="color:var(--text-3)"></i></div>
        <span class="mc-title">Attendance</span>
        <span class="mc-sub">Record event check-in</span>
      </label>

      <input type="radio" name="scanMode" id="distributionMode" value="distribution" autocomplete="off">
      <label class="mode-card" for="distributionMode">
        <div class="mc-icon"><i class="fa-solid fa-hand-holding-heart" style="color:var(--text-3)"></i></div>
        <span class="mc-title">Distribution</span>
        <span class="mc-sub">Claim relief goods</span>
      </label>
    </div>

    <!-- Scanner Type Toggle — hidden on mobile -->
    <div class="scanner-type-wrap">
      <div class="scanner-type-toggle">
        <input type="radio" name="scannerType" id="cameraScanner" value="camera" autocomplete="off" checked>
        <label class="stype-card" for="cameraScanner">
          <i class="fa-solid fa-camera"></i> Camera Scanner
        </label>

        <input type="radio" name="scannerType" id="hardwareScanner" value="hardware" autocomplete="off">
        <label class="stype-card" for="hardwareScanner">
          <i class="fa-solid fa-microchip"></i> Hardware Scanner
        </label>
      </div>
    </div>

    <!-- Mode Description Banner -->
    <div id="modeBanner" class="mode-banner attendance">
      <i class="fa-solid fa-circle-info"></i>
      <span id="modeText">Attendance Mode — Scan QR code to record event check-in</span>
    </div>

    <!-- Camera Scanner Section -->
    <div id="cameraSection">
      <div class="camera-wrap">
        <div id="reader" style="width:100%; min-height:340px; background:#000;"></div>
        <div class="camera-status">
          <span class="scan-pulse"></span>
          Camera Active — Point at QR Code to Scan
        </div>
      </div>
    </div>

    <!-- Hardware Scanner Section (Desktop only, hidden on mobile via CSS) -->
    <div id="hardwareSection" style="display:none">
      <div class="hw-panel">
        <div class="hw-panel-header">
          <i class="fa-solid fa-microchip"></i> Hardware Scanner Mode
        </div>
        <div class="hw-panel-body">
          <div class="hw-info-box">
            <i class="fa-solid fa-circle-info" style="margin-top:1px;flex-shrink:0"></i>
            Connect your hardware scanner and scan a QR code. The scanner should act as a keyboard input device.
          </div>
          <label class="field-label">Scan Input Field</label>
          <input type="text" class="form-control" id="hardwareScanInput"
                 placeholder="Scanner input will appear here..." readonly>
          <p style="font-size:.65rem;color:var(--text-3);margin-top:5px">
            <i class="fa-solid fa-keyboard me-1"></i>
            Position cursor here and scan with your hardware scanner
          </p>
          <div id="hardwareStatus" class="hw-status idle">
            <i class="fa-solid fa-circle-dot"></i>
            <span>Hardware scanner is ready — Click the field above and scan</span>
          </div>
          <div id="hardwareResult" class="hw-result" style="display:none"></div>
        </div>
        <div class="hw-panel-footer">
          <span><i class="fa-solid fa-clock me-1"></i>Listening for scanner input...</span>
          <button class="btn-outline-c" onclick="resetHardwareScanner()">
            <i class="fa-solid fa-rotate-right"></i> Reset
          </button>
        </div>
      </div>
    </div>

  </div><!-- /page-body -->

  <!-- Account Info Bar -->
  <div class="account-bar">
    <div class="account-bar-left">
      <div class="acc-label">Distributor Account</div>
      <div class="acc-name"><?= esc(session()->get('username')) ?></div>
    </div>
    <div class="account-bar-right">
      <a href="/scanner/settings" class="btn-outline-c">
        <i class="fa-solid fa-gear"></i> Settings
      </a>
      <i class="fa-solid fa-shield-halved" style="color:var(--green-mid);opacity:.6;font-size:.9rem"></i>
    </div>
  </div>

  <!-- Quick Stats -->
  <div class="quick-stats">
    <div class="stat-card">
      <div class="sc-label"><i class="fa-solid fa-calendar-check me-1"></i>Today's Attendance</div>
      <div class="sc-val" id="todayAttendance">—</div>
    </div>
    <div class="stat-card">
      <div class="sc-label"><i class="fa-solid fa-hand-holding-heart me-1"></i>Today's Distribution</div>
      <div class="sc-val" id="todayDistribution">—</div>
    </div>
  </div>
</div><!-- /page-wrap -->

<!-- QR Scan Result Modal -->
<div class="modal fade" id="scanResultModal" tabindex="-1" aria-labelledby="scanResultModalLabel" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="scanResultModalLabel">
          <i class="fa-solid fa-circle-check text-success me-2"></i>
          Scan Result
        </h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="scanResultModalBody">
        <!-- Content will be loaded dynamically -->
        <div class="text-center py-4">
          <div class="spinner-border text-success" role="status">
            <span class="visually-hidden">Loading...</span>
          </div>
          <p class="mt-2">Processing scan result...</p>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
          <i class="fa-solid fa-xmark me-1"></i>Close
        </button>
        <button type="button" class="btn btn-success" id="scanAnotherBtn">
          <i class="fa-solid fa-qrcode me-1"></i>Scan Another
        </button>
      </div>
    </div>
  </div>
</div>

<!-- QR Library -->
<script src="https://unpkg.com/html5-qrcode"></script>
<script src="https://unpkg.com/html5-qrcode"></script>
<script>
let html5QrcodeScanner;
let currentMode = 'attendance';
let currentScannerType = 'camera';
let isModalOpen = false; // Track modal state

let hardwareBuffer = '';
let hardwareTimeout = null;
let hardwareActive = false;

// ── Detect mobile: hide hardware toggle & force camera ──
const isMobile = /Mobi|Android|iPhone|iPad|iPod/i.test(navigator.userAgent) || window.innerWidth <= 640;

// ==================== CAMERA SCANNER ====================
function onScanSuccess(decodedText) {
    // Pause scanner
    if (html5QrcodeScanner) {
        try {
            html5QrcodeScanner.pause();
        } catch (e) {
            console.log('Error pausing scanner:', e);
        }
    }
    
    const mode = document.querySelector('input[name="scanMode"]:checked').value;
    
    // Show modal with loading state
    showScanResultModal(decodedText, mode);
}

function initCameraScanner() {
    if (html5QrcodeScanner) {
        try {
            html5QrcodeScanner.clear();
        } catch (e) {
            console.log('Error clearing scanner:', e);
        }
    }
    
    html5QrcodeScanner = new Html5QrcodeScanner(
        "reader",
        { 
            fps: 10, 
            qrbox: { width: 250, height: 250 }, 
            rememberLastUsedCamera: true,
            showTorchButtonIfSupported: true // Add torch button if needed
        },
        false
    );
    html5QrcodeScanner.render(onScanSuccess);
}

// ==================== HARDWARE SCANNER ====================
function initHardwareScanner() {
    const input = document.getElementById('hardwareScanInput');
    hardwareActive = true;
    hardwareBuffer = '';
    input.value = '';
    input.readOnly = false;
    input.focus();
    updateHardwareStatus('ready', 'Hardware scanner active — Scan a QR code now');
    if (hardwareTimeout) clearTimeout(hardwareTimeout);
    // Timeout removed - no more "No scan detected" warning
}

function stopHardwareScanner() {
    hardwareActive = false;
    const input = document.getElementById('hardwareScanInput');
    if (input) input.readOnly = true;
    if (hardwareTimeout) { 
        clearTimeout(hardwareTimeout); 
        hardwareTimeout = null; 
    }
}

function resetHardwareScanner() {
    stopHardwareScanner();
    document.getElementById('hardwareResult').style.display = 'none';
    document.getElementById('hardwareResult').innerHTML = '';
    if (currentScannerType === 'hardware' && !isModalOpen) setTimeout(() => initHardwareScanner(), 200);
}

function updateHardwareStatus(type, message) {
    const el = document.getElementById('hardwareStatus');
    const icons = {
        ready:      ['fa-circle-dot',          'ready'],
        processing: ['fa-spinner fa-spin',     'processing'],
        warning:    ['fa-triangle-exclamation','warning'],
        error:      ['fa-circle-exclamation',  'error'],
        idle:       ['fa-circle-dot',          'idle'],
    };
    const [icon, cls] = icons[type] || icons.idle;
    el.className = 'hw-status ' + cls;
    el.innerHTML = `<i class="fa-solid ${icon}"></i><span>${message}</span>`;
}

function processHardwareScan(scanData) {
    if (!hardwareActive) return;
    
    stopHardwareScanner();
    updateHardwareStatus('processing', 'Validating QR code...');
    
    const mode = document.querySelector('input[name="scanMode"]:checked').value;
    showHardwareResult(scanData, mode);
    
    // Show modal with loading state
    showScanResultModal(scanData.trim(), mode);
}

function showHardwareResult(scanData, mode) {
    const el = document.getElementById('hardwareResult');
    const modeName = mode === 'attendance' ? 'Attendance' : 'Distribution';
    el.innerHTML = `
        <div class="hw-result-inner">
            <i class="fa-solid fa-spinner fa-spin"></i>
            <div>
                <strong>Processing ${modeName} Scan…</strong><br>
                <span style="font-size:.65rem;opacity:.7">QR: ${scanData.substring(0,30)}${scanData.length>30?'…':''}</span>
            </div>
        </div>`;
    el.style.display = 'block';
}

// ==================== TOGGLE FUNCTIONS ====================
function switchToCamera() {
    currentScannerType = 'camera';
    document.getElementById('cameraSection').style.display = 'block';
    document.getElementById('hardwareSection').style.display = 'none';
    stopHardwareScanner();
    if (!isModalOpen) setTimeout(() => initCameraScanner(), 100);
}

function switchToHardware() {
    currentScannerType = 'hardware';
    document.getElementById('cameraSection').style.display = 'none';
    document.getElementById('hardwareSection').style.display = 'block';
    if (html5QrcodeScanner) {
        try {
            html5QrcodeScanner.clear();
        } catch (e) {}
    }
    if (!isModalOpen) setTimeout(() => initHardwareScanner(), 100);
}

// ==================== MODE BANNER ====================
function updateModeBanner(mode) {
    const banner = document.getElementById('modeBanner');
    const text   = document.getElementById('modeText');
    if (mode === 'attendance') {
        banner.className = 'mode-banner attendance';
        text.textContent = 'Attendance Mode — Scan QR code to record event check-in';
    } else {
        banner.className = 'mode-banner distribution';
        text.textContent = 'Distribution Mode — Scan QR code to claim relief goods';
    }
}

// ==================== EVENTS ====================
document.querySelectorAll('input[name="scannerType"]').forEach(r => {
    r.addEventListener('change', function() {
        saveScannerType(this.value);
        this.value === 'camera' ? switchToCamera() : switchToHardware();
    });
});

document.querySelectorAll('input[name="scanMode"]').forEach(r => {
    r.addEventListener('change', function() {
        currentMode = this.value;
        updateModeBanner(currentMode);
        saveSelectedMode(currentMode);
    });
});

document.getElementById('hardwareScanInput').addEventListener('input', function() {
    if (!hardwareActive) return;
    if (hardwareTimeout) clearTimeout(hardwareTimeout);
    hardwareBuffer = this.value;
    hardwareTimeout = setTimeout(() => {
        if (hardwareActive && this.value.trim()) processHardwareScan(this.value.trim());
    }, 500);
});

document.getElementById('hardwareScanInput').addEventListener('keydown', function(e) {
    if (!hardwareActive) return;
    if (e.key === 'Enter') {
        e.preventDefault();
        const data = hardwareBuffer || this.value;
        if (data.trim()) processHardwareScan(data.trim());
    }
});

// ==================== STATS ====================
function loadStats() {
    fetch('/attendance/stats')
        .then(r => r.json())
        .then(d => { document.getElementById('todayAttendance').textContent = d.today ?? 0; })
        .catch(() => {});
    fetch('/distribution/today-stats')
        .then(r => r.json())
        .then(d => { document.getElementById('todayDistribution').textContent = d.today ?? 0; })
        .catch(() => {});
}

// ==================== PERSISTENCE ====================
function saveSelectedMode(mode)  { localStorage.setItem('preferredScanMode', mode); }
function loadSavedMode()         { return localStorage.getItem('preferredScanMode'); }
function saveScannerType(type)   { localStorage.setItem('preferredScannerType', type); }
function loadSavedScannerType()  { return localStorage.getItem('preferredScannerType'); }

function applySavedMode() {
    const saved = loadSavedMode();
    if (saved) {
        const radio = document.querySelector(`input[name="scanMode"][value="${saved}"]`);
        if (radio) { radio.checked = true; currentMode = saved; updateModeBanner(saved); }
    }
}

function applySavedScannerType() {
    // On mobile, always force camera regardless of saved preference
    if (isMobile) { switchToCamera(); return; }
    const saved = loadSavedScannerType();
    if (saved) {
        const radio = document.querySelector(`input[name="scannerType"][value="${saved}"]`);
        if (radio) {
            radio.checked = true;
            saved === 'camera' ? switchToCamera() : switchToHardware();
            return;
        }
    }
    switchToCamera();
}

// ==================== MODAL FUNCTIONS ====================
function resumeScanning() {
    console.log('Resuming scanner... Current type:', currentScannerType);
    
    if (currentScannerType === 'camera') {
        if (html5QrcodeScanner) {
            try {
                html5QrcodeScanner.clear();
                setTimeout(() => {
                    initCameraScanner();
                }, 100);
            } catch (e) {
                console.log('Error with scanner, reinitializing:', e);
                setTimeout(() => initCameraScanner(), 300);
            }
        } else {
            setTimeout(() => initCameraScanner(), 300);
        }
    } else if (currentScannerType === 'hardware') {
        setTimeout(() => {
            initHardwareScanner();
            maintainHardwareFocus(); // Add this line
        }, 300);
    }
}

function showScanResultModal(qrToken, mode) {
    isModalOpen = true;
    
    // Show modal with loading
    const modalElement = document.getElementById('scanResultModal');
    const modal = new bootstrap.Modal(modalElement);
    
    document.getElementById('scanResultModalBody').innerHTML = `
        <div class="text-center py-4">
            <div class="spinner-border text-success" role="status">
                <span class="visually-hidden">Loading...</span>
            </div>
            <p class="mt-2">Processing ${mode} scan...</p>
            <small class="text-muted">QR: ${qrToken.substring(0,30)}${qrToken.length>30?'…':''}</small>
        </div>
    `;
    
    modal.show();

url = mode === 'attendance' 
    ? `/attendance/process-scan?qr_token=${encodeURIComponent(qrToken)}`
    : `/distribution/process-scan-view?qr_token=${encodeURIComponent(qrToken)}`;
    
    fetch(url, {
        method: 'GET',
        headers: {
            'X-Requested-With': 'XMLHttpRequest'
        }
    })
    .then(response => response.json())
    .then(data => {
        // Update modal with result
        document.getElementById('scanResultModalBody').innerHTML = generateResultHTML(data, mode);
        
        // Refresh stats after successful scan
        if (data.status === 'success') {
            loadStats();
        }
    })
    .catch(error => {
        document.getElementById('scanResultModalBody').innerHTML = `
            <div class="text-center py-4">
                <i class="fa-solid fa-circle-exclamation text-danger fa-4x mb-3"></i>
                <h4 class="text-danger">Error</h4>
                <p>Failed to process scan. Please try again.</p>
                <small class="text-muted">${error.message}</small>
            </div>
        `;
    });
}

function generateResultHTML(data, mode) {
    if (mode === 'attendance') {
        // ATTENDANCE MODE RESULTS WITH PHOTO
        if (data.status === 'success' || data.status === 'already_checked_in') {
            // Get details from the response
            const resident = data.resident_details || {}; // Head of family info
            const person = data.person_details || {}; // The actual person scanned (head or family member)
            const familyMembers = data.family_members || [];
            const isFamilyMember = person.is_family_member || false;
            
            // Determine check-in time
            const checkInTime = data.check_in_time || 
                (data.data?.check_in_time || new Date().toLocaleTimeString());
            
            // Generate photo HTML for the person scanned
            let photoHTML = '';
            const personPhoto = person.photo || resident.photo;
            
            if (personPhoto) {
                // Remove leading slash if present
                let photoPath = personPhoto;
                if (photoPath.startsWith('/')) {
                    photoPath = photoPath.substring(1);
                }
                
                photoHTML = `
                    <div class="text-center mb-3">
                        <a href="/${photoPath}" target="_blank">
                            <img src="/${photoPath}" 
                                 style="width: 100px; height: 100px; border-radius: 50%; object-fit: cover; border: 4px solid ${data.status === 'success' ? 'var(--green-mid)' : 'var(--orange-mid)'}; box-shadow: 0 4px 12px rgba(0,0,0,0.1); cursor: pointer;"
                                 title="Click to view full size"
                                 onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\'width:100px;height:100px;border-radius:50%;background:linear-gradient(135deg,#77BC3F,#4a7a26);display:flex;align-items:center;justify-content:center;color:#fff;font-size:2.5rem;font-weight:700;margin:0 auto;\'>${person.name ? person.name.charAt(0).toUpperCase() : '?'}</div>'">
                        </a>
                    </div>
                `;
            } else {
                photoHTML = `
                    <div class="text-center mb-3">
                        <div style="width:100px;height:100px;border-radius:50%;background:linear-gradient(135deg,#77BC3F,#4a7a26);display:flex;align-items:center;justify-content:center;color:#fff;font-size:2.5rem;font-weight:700;margin:0 auto;">
                            ${person.name ? person.name.charAt(0).toUpperCase() : '?'}
                        </div>
                    </div>
                `;
            }
            
            // Generate status icon and message
            const statusIcon = data.status === 'success' ? 'fa-circle-check text-success' : 'fa-circle-info text-info';
            const statusTitle = data.status === 'success' ? 'Attendance Confirmed' : 'Already Checked In';
            
            // Person type badge
            const personTypeBadge = isFamilyMember ? 
                '<span class="badge bg-info ms-2">Family Member</span>' : 
                '<span class="badge bg-primary ms-2">Head of Family</span>';
            
            // Check if household is 4Ps beneficiary (from resident data - this is the key!)
            const isHousehold4Ps = resident.is_4ps_beneficiary || false;
            
            // Get IP Ethnicity - first check person, then fallback to resident
            const ipEthnicity = (person.ip_ethnicity && person.ip_ethnicity !== 'N/A' && person.ip_ethnicity !== '') 
                ? person.ip_ethnicity 
                : (resident.ip_ethnicity && resident.ip_ethnicity !== 'N/A' && resident.ip_ethnicity !== '') 
                    ? resident.ip_ethnicity 
                    : null;
            
            return `
                <div class="text-center mb-3">
                    <i class="fa-solid ${statusIcon} fa-4x"></i>
                    <h4 class="fw-bold ${data.status === 'success' ? 'text-success' : 'text-info'} mt-2">
                        ${statusTitle}
                        ${personTypeBadge}
                    </h4>
                    <p class="text-muted">${data.message || ''}</p>
                </div>
                
                ${photoHTML}
                
                <div class="bg-light p-3 rounded">
                    <div class="row">
                        <!-- Person's Name (the actual person scanned) -->
                        <div class="col-12 mb-2">
                            <small class="text-muted d-block">Name</small>
                            <span class="fw-bold fs-6">${person.name || 'N/A'} ${person.name_extension || ''}</span>
                            ${isFamilyMember ? `<div><small class="text-muted">Relation: ${person.relation || 'Family Member'}</small></div>` : ''}
                        </div>
                        
                        <!-- Household Info (from head of family) -->
                        <div class="col-6">
                            <small class="text-muted d-block">Household No.</small>
                            <span class="fw-bold">${resident.household_no || 'N/A'}</span>
                        </div>
                        
                        <div class="col-6">
                            <small class="text-muted d-block">Barangay</small>
                            <span class="fw-bold">${resident.barangay || 'N/A'}</span>
                        </div>
                        
                        <!-- Personal Info -->
                        <div class="col-6 mt-2">
                            <small class="text-muted d-block">Age / Sex</small>
                            <span class="fw-bold">${person.age || '?'} / ${person.sex || 'N/A'}</span>
                        </div>
                        
                        ${!isFamilyMember ? `
                        <div class="col-6 mt-2">
                            <small class="text-muted d-block">Civil Status</small>
                            <span class="fw-bold">${person.civil_status || 'N/A'}</span>
                        </div>
                        ` : ''}
                        
                        ${!isFamilyMember && person.contact_number ? `
                        <div class="col-6 mt-2">
                            <small class="text-muted d-block">Contact #</small>
                            <span class="fw-bold">${person.contact_number}</span>
                        </div>
                        ` : ''}
                        
                        <div class="col-6 mt-2">
                            <small class="text-muted d-block">Check-in Time</small>
                            <span class="fw-bold">${checkInTime}</span>
                        </div>
                        
                        ${person.birthdate ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Birthdate</small>
                            <span class="fw-bold">${person.birthdate}</span>
                        </div>
                        ` : ''}
                        
                        <!-- Mother's Maiden Name (Head only) -->
                        ${!isFamilyMember && person.mother_maiden_name ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Mother's Maiden Name</small>
                            <span class="fw-bold">${person.mother_maiden_name}</span>
                        </div>
                        ` : ''}
                        
                        <!-- Religion (Head only) -->
                        ${!isFamilyMember && person.religion ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Religion</small>
                            <span class="fw-bold">${person.religion}</span>
                        </div>
                        ` : ''}
                        
                        <!-- Birthplace (Head only) -->
                        ${!isFamilyMember && person.birthplace ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Birthplace</small>
                            <span class="fw-bold">${person.birthplace}</span>
                        </div>
                        ` : ''}
                        
                        <!-- Monthly Income (Head only) -->
                        ${!isFamilyMember && person.monthly_income ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Monthly Income</small>
                            <span class="fw-bold">₱${Number(person.monthly_income).toLocaleString()}</span>
                        </div>
                        ` : ''}
                        
                        <!-- ID Card Info (Head only) -->
                        ${!isFamilyMember && person.id_card_presented ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">ID Presented</small>
                            <span class="fw-bold">${person.id_card_presented} ${person.id_card_number ? `(${person.id_card_number})` : ''}</span>
                        </div>
                        ` : ''}
                        
                        <!-- 4Ps Beneficiary - Show for BOTH Head and Family Members (from household data) -->
                        ${isHousehold4Ps ? `
                        <div class="col-12 mt-2">
                            <div style="background-color: #d1e7dd; border-left: 4px solid #0f5132; padding: 8px 12px; border-radius: 4px;">
                                <div style="display: flex; align-items: center; gap: 8px;">
                                    <i class="fa-solid fa-hand-holding-heart" style="color: #0f5132;"></i>
                                    <div>
                                        <span style="font-weight: 700; color: #0f5132;">4Ps Beneficiary</span>
                                        <p style="margin: 0; font-size: 0.75rem; color: #0f5132;">Yes, this family is a 4Ps beneficiary</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        ` : ''}
                        
                        <!-- IP Ethnicity - Show for BOTH Head and Family Members (using fallback) -->
                        ${ipEthnicity ? `
                        <div class="col-12 mt-2">
                            <div style="background-color: #fff3cd; border-left: 4px solid #856404; padding: 8px 12px; border-radius: 4px;">
                                <div style="display: flex; align-items: center; gap: 8px;">
                                    <i class="fa-solid fa-users" style="color: #856404;"></i>
                                    <div>
                                        <span style="font-weight: 700; color: #856404;">IP Type / Ethnicity</span>
                                        <p style="margin: 0; font-size: 0.75rem; color: #856404;">${ipEthnicity}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        ` : ''}
                        
                        <!-- Vulnerable Information (Head only) -->
                        ${!isFamilyMember && (person.vulnerable_older_persons || person.vulnerable_pregnant || person.vulnerable_lactating || person.vulnerable_pwd) ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Vulnerable Members</small>
                            <div class="mt-1">
                                ${person.vulnerable_older_persons ? `<span class="badge bg-info me-1">Older: ${person.vulnerable_older_persons}</span>` : ''}
                                ${person.vulnerable_pregnant ? `<span class="badge bg-info me-1">Pregnant: ${person.vulnerable_pregnant}</span>` : ''}
                                ${person.vulnerable_lactating ? `<span class="badge bg-info me-1">Lactating: ${person.vulnerable_lactating}</span>` : ''}
                                ${person.vulnerable_pwd ? `<span class="badge bg-info me-1">PWD: ${person.vulnerable_pwd}</span>` : ''}
                            </div>
                        </div>
                        ` : ''}
                        
                        <!-- Address (Head only) -->
                        ${!isFamilyMember && (person.house_no || person.street || person.subdivision || person.permanent_barangay) ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Address</small>
                            <span class="fw-bold">
                                ${[person.house_no, person.street, person.subdivision].filter(Boolean).join(', ')}
                                ${person.permanent_barangay ? (person.permanent_barangay !== resident.barangay ? `, ${person.permanent_barangay}` : '') : ''}
                                ${person.permanent_city ? `, ${person.permanent_city}` : ''}
                            </span>
                        </div>
                        ` : ''}
                        
                        <!-- Ownership Status (Head only) -->
                        ${!isFamilyMember && person.ownership_status ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Ownership Status</small>
                            <span class="fw-bold">${person.ownership_status}</span>
                        </div>
                        ` : ''}
                        
                        ${data.scanned_by_name ? `
                        <div class="col-12 mt-2">
                            <small class="text-muted d-block">Scanned By</small>
                            <span class="fw-bold">${data.scanned_by_name}</span>
                        </div>
                        ` : ''}
                    </div>
                </div>
                
${familyMembers.length > 0 ? `
<div class="mt-4">
    <h6 class="fw-bold mb-3"><i class="fa-solid fa-users me-2"></i>Household Members (${familyMembers.length})</h6>
    <div class="row g-2">
        ${familyMembers.map(member => {
            // Highlight the scanned person
            const isScannedPerson = member.is_scanned_person || false;
            const isHead = member.is_head || false;
            const memberInitial = member.name ? member.name.charAt(0).toUpperCase() : '?';
            
            // Check-in status badge
            const memberCheckedIn = member.checked_in_today ? 
                '<span class="badge bg-success ms-2" style="font-size:0.6rem;">Checked In</span>' : 
                '<span class="badge bg-secondary ms-2" style="font-size:0.6rem;">Not Checked In</span>';
            
            // Head of family badge
            const headBadge = isHead ? 
                '<span class="badge bg-primary ms-2" style="font-size:0.6rem;">Head</span>' : '';
            
            // Scanned badge
            const scannedBadge = isScannedPerson ? 
                '<span class="badge bg-warning ms-2" style="font-size:0.6rem;">Scanned</span>' : '';
            
            // Highlight styling for the scanned person
            const highlightStyle = isScannedPerson ? 'background-color: #e8f5e9; border: 2px solid #28a745;' : '';
            
            return `
                <div class="col-12">
                    <div class="bg-light p-2 rounded d-flex align-items-center gap-2" style="${highlightStyle}">
                        ${member.photo ? `
                            <a href="/${member.photo}" target="_blank">
                                <img src="/${member.photo}" 
                                     style="width: 45px; height: 45px; border-radius: 8px; object-fit: cover; border: 1px solid var(--border); cursor: pointer;"
                                     title="Click to view full size"
                                     onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\'width:45px;height:45px;border-radius:8px;background:linear-gradient(135deg,var(--green-light),var(--green-mid));display:flex;align-items:center;justify-content:center;color:#fff;font-size:.9rem;font-weight:700;\'>${memberInitial}</div>'">
                            </a>
                        ` : `
                            <div style="width:45px;height:45px;border-radius:8px;background:linear-gradient(135deg,var(--green-light),var(--green-mid));display:flex;align-items:center;justify-content:center;color:#fff;font-size:.9rem;font-weight:700;">
                                ${memberInitial}
                            </div>
                        `}
                        <div style="flex:1; min-width:0;">
                            <div style="font-weight:600; font-size:.8rem; display:flex; align-items:center; flex-wrap:wrap;">
                                ${member.name}
                                ${headBadge}
                                ${scannedBadge}
                                ${memberCheckedIn}
                            </div>
                            <small class="text-muted d-block" style="font-size:.65rem;">
                                ${member.relation || 'Family Member'} 
                                ${member.age ? `• ${member.age} years old` : ''}
                                ${member.sex && member.sex !== 'N/A' ? `• ${member.sex}` : ''}
                            </small>
                            ${member.check_in_time ? `
                                <small class="text-success d-block" style="font-size:.6rem;">
                                    <i class="fa-solid fa-clock"></i> Check-in: ${member.check_in_time}
                                </small>
                            ` : ''}
                        </div>
                    </div>
                </div>
            `;
        }).join('')}
    </div>
</div>
` : ''}
            `;
        } else {
            // Error case
            return `
                <div class="text-center mb-3">
                    <i class="fa-solid fa-circle-xmark text-danger fa-4x"></i>
                    <h4 class="fw-bold text-danger mt-2">Scan Failed</h4>
                    <p class="fw-bold">${data.message || 'Invalid QR code'}</p>
                </div>
                
                <div class="bg-light p-3 rounded">
                    <p class="text-muted small mb-0">Please ensure the QR code is valid and try again.</p>
                </div>
            `;
        }
    } else {
        // DISTRIBUTION MODE RESULTS
        if (data.status === 'success') {
            // Head of Family Photo
            let headPhotoHTML = '';
            if (data.resident && data.resident.photo) {
                // Remove the leading slash from the path if it exists
                let photoPath = data.resident.photo;
                if (photoPath.startsWith('/')) {
                    photoPath = photoPath.substring(1);
                }
                
                headPhotoHTML = `
                    <div class="text-center mb-3">
                        <a href="/${photoPath}" target="_blank">
                            <img src="/${photoPath}" 
                                 style="width: 80px; height: 80px; border-radius: 16px; object-fit: cover; border: 3px solid var(--green-mid); cursor: pointer;"
                                 title="Click to view full size"
                                 onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\'width:80px;height:80px;border-radius:16px;background:linear-gradient(135deg,var(--green-light),var(--green-mid));display:flex;align-items:center;justify-content:center;color:#fff;font-size:1.2rem;font-weight:700;margin:0 auto;\'>${data.resident.first_name ? data.resident.first_name.charAt(0).toUpperCase() : 'H'}</div>'">
                        </a>
                    </div>
                `;
            } else {
                headPhotoHTML = `
                    <div class="text-center mb-3">
                        <div style="width:80px;height:80px;border-radius:16px;background:linear-gradient(135deg,var(--green-light),var(--green-mid));display:flex;align-items:center;justify-content:center;color:#fff;font-size:1.2rem;font-weight:700;margin:0 auto;">
                            ${data.resident ? data.resident.first_name?.charAt(0).toUpperCase() : 'H'}
                        </div>
                    </div>
                `;
            }

            let itemsHTML = '';
            if (data.items_distributed && Array.isArray(data.items_distributed)) {
                itemsHTML = data.items_distributed.map(item => `
                    <div class="border-bottom py-2">
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="fw-bold">${item.item_name}</span>
                            <span class="badge bg-primary rounded-pill">
                                ${item.quantity} ${item.unit_type}
                            </span>
                        </div>
                        <small class="text-muted d-block">
                            <i class="fa-solid fa-cube me-1"></i>Batch: ${item.batch_number}
                        </small>
                    </div>
                `).join('');
            }

            // ===== UPDATED FAMILY MEMBERS SECTION WITH PRESENT/ABSENT STATUS =====
            let familyMembersHTML = '';
            if (data.family_members && data.family_members.length > 0) {
                // Count present members
                const presentCount = data.family_members.filter(m => m.checked_in_today).length;
                const totalCount = data.family_members.length;
                
                familyMembersHTML = `
                    <div class="mt-4">
                        <h6 class="fw-bold mb-3"><i class="fa-solid fa-users me-2"></i>Family Members (Present/Absent)</h6>
                        
                        <!-- Attendance Summary Badge -->
                        <div class="col-12 mb-3">
                            <div class="d-flex justify-content-between align-items-center bg-light p-2 rounded">
                                <span><i class="fa-solid fa-users me-1"></i>Attendance Summary:</span>
                                <span>
                                    <span class="badge bg-success me-1">Present: ${presentCount}</span>
                                    <span class="badge bg-secondary">Absent: ${totalCount - presentCount}</span>
                                </span>
                            </div>
                        </div>
                        
                        <div class="row g-2">
                `;
                
                data.family_members.forEach(member => {
                    const memberInitial = member.name ? member.name.charAt(0).toUpperCase() : 'M';
                    const isPresent = member.checked_in_today || false;
                    
                    // Different styling based on presence
                    const borderColor = isPresent ? '#28a745' : '#dc3545';
                    const bgColor = isPresent ? '#f0fff4' : '#fff5f5';
                    const statusIcon = isPresent ? 'fa-circle-check text-success' : 'fa-circle-xmark text-danger';
                    const statusText = isPresent ? 'Present' : 'Absent';
                    
                    familyMembersHTML += `
                        <div class="col-12">
                            <div class="p-2 rounded d-flex align-items-center gap-2" 
                                 style="background-color: ${bgColor}; border-left: 4px solid ${borderColor};">
                                ${member.photo ? `
                                    <a href="/${member.photo}" target="_blank">
                                        <img src="/${member.photo}" 
                                             style="width: 40px; height: 40px; border-radius: 8px; object-fit: cover; border: 1px solid var(--border); cursor: pointer;"
                                             title="Click to view full size"
                                             onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\'width:40px;height:40px;border-radius:8px;background:linear-gradient(135deg,var(--green-light),var(--green-mid));display:flex;align-items:center;justify-content:center;color:#fff;font-size:.7rem;font-weight:700;\'>${memberInitial}</div>'">
                                    </a>
                                ` : `
                                    <div style="width:40px;height:40px;border-radius:8px;background:linear-gradient(135deg,var(--green-light),var(--green-mid));display:flex;align-items:center;justify-content:center;color:#fff;font-size:.7rem;font-weight:700;">
                                        ${memberInitial}
                                    </div>
                                `}
                                <div style="flex:1; min-width:0;">
                                    <div style="font-weight:600; font-size:.8rem; display: flex; align-items: center; justify-content: space-between;">
                                        <span>${member.name}</span>
                                        <span class="badge ${isPresent ? 'bg-success' : 'bg-danger'} ms-2" style="font-size:0.65rem;">
                                            <i class="fa-solid ${isPresent ? 'fa-circle-check' : 'fa-circle-xmark'} me-1"></i>
                                            ${statusText}
                                        </span>
                                    </div>
                                    <div style="display: flex; justify-content: space-between; align-items: center;">
                                        <small class="text-muted d-block" style="font-size:.65rem;">
                                            ${member.relation || 'Family Member'} 
                                            ${member.age ? `• ${member.age} years old` : ''}
                                            ${member.sex && member.sex !== 'N/A' ? `• ${member.sex}` : ''}
                                        </small>
                                        ${member.check_in_time ? `
                                            <small class="text-success" style="font-size:.6rem;">
                                                <i class="fa-regular fa-clock"></i> ${member.check_in_time}
                                            </small>
                                        ` : ''}
                                    </div>
                                </div>
                            </div>
                        </div>
                    `;
                });
                
                familyMembersHTML += `
                        </div>
                    </div>
                `;
            }
            // ===== END OF UPDATED FAMILY MEMBERS SECTION =====

            return `
                <div class="text-center mb-3">
                    <i class="fa-solid fa-circle-check text-success fa-4x"></i>
                    <h4 class="fw-bold text-success mt-2">Distribution Confirmed</h4>
                    <p class="text-muted">${data.message}</p>
                </div>
                
                ${headPhotoHTML}
                
                <div class="bg-light p-3 rounded">
                    <div class="row">
                        <div class="col-6">
                            <small class="text-muted d-block">Beneficiary Name</small>
                            <span class="fw-bold">${data.resident ? data.resident.full_name : 'N/A'}</span>
                        </div>
                        <div class="col-6">
                            <small class="text-muted d-block">Household No.</small>
                            <span class="fw-bold">${data.resident ? data.resident.household_no : 'N/A'}</span>
                        </div>
                        <div class="col-6 mt-2">
                            <small class="text-muted d-block">Barangay</small>
                            <span class="fw-bold">${data.resident ? data.resident.barangay : 'N/A'}</span>
                        </div>
                        <div class="col-6 mt-2">
                            <small class="text-muted d-block">Contact</small>
                            <span class="fw-bold">${data.resident ? data.resident.contact_number : 'N/A'}</span>
                        </div>
                    </div>
                </div>
                
                <div class="mt-3">
                    <h6 class="fw-bold mb-2"><i class="fa-solid fa-boxes me-2"></i>Items Distributed</h6>
                    <div class="bg-light p-2 rounded">
                        ${itemsHTML || '<p class="text-muted">No items distributed</p>'}
                    </div>
                </div>
                
                ${familyMembersHTML}
            `;
        } else if (data.status === 'denied') {
            // Already claimed result
            let headPhotoHTML = '';
            if (data.resident && data.resident.photo) {
                headPhotoHTML = `
                    <div class="text-center mb-3">
                        <a href="/${data.resident.photo}" target="_blank">
                            <img src="/${data.resident.photo}" 
                                 style="width: 80px; height: 80px; border-radius: 16px; object-fit: cover; border: 3px solid var(--orange-mid); cursor: pointer;"
                                 title="Click to view full size"
                                 onerror="this.onerror=null; this.parentElement.innerHTML='<div style=\'width:80px;height:80px;border-radius:16px;background:linear-gradient(135deg,var(--orange-light),var(--orange-mid));display:flex;align-items:center;justify-content:center;color:#fff;font-size:1.2rem;font-weight:700;margin:0 auto;\'>${data.resident.first_name ? data.resident.first_name.charAt(0).toUpperCase() : 'H'}</div>'">
                        </a>
                    </div>
                `;
            }

            return `
                <div class="text-center mb-3">
                    <i class="fa-solid fa-circle-exclamation text-warning fa-4x"></i>
                    <h4 class="fw-bold text-warning mt-2">Already Claimed</h4>
                    <p class="fw-bold">${data.message}</p>
                </div>
                
                ${headPhotoHTML}
                
                <div class="bg-light p-3 rounded">
                    <div class="row">
                        <div class="col-12">
                            <small class="text-muted d-block">Beneficiary Name</small>
                            <span class="fw-bold">${data.resident ? data.resident.full_name : 'N/A'}</span>
                        </div>
                    </div>
                    
                    ${data.distribution_history ? `
                    <div class="mt-3 p-2 bg-white rounded">
                        <label class="small text-muted">Distribution History</label>
                        <p class="small mb-0">Claimed on: ${new Date(data.distribution_history.claimed_at).toLocaleString()}</p>
                        <p class="small">Distributed by: ${data.distribution_history.distributor_name}</p>
                    </div>
                    ` : ''}
                </div>
            `;
        } else {
            // Error result
            return `
                <div class="text-center mb-3">
                    <i class="fa-solid fa-circle-xmark text-danger fa-4x"></i>
                    <h4 class="fw-bold text-danger mt-2">Scan Failed</h4>
                    <p class="fw-bold">${data.message}</p>
                </div>
                
                <div class="bg-light p-3 rounded">
                    <p class="text-muted small mb-0">Please ensure the QR code is valid and try again.</p>
                </div>
                
                ${data.message && data.message.includes('stock') ? `
                <div class="alert alert-warning mt-3 small">
                    <i class="fa-solid fa-triangle-exclamation me-2"></i>
                    Contact inventory manager to restock supplies.
                </div>
                ` : ''}
            `;
        }
    }
}

// ==================== MODAL EVENT LISTENERS ====================
document.addEventListener('DOMContentLoaded', function() {
    // Get the modal element
    const modalElement = document.getElementById('scanResultModal');
    
    // Add event listener for when modal is hidden (closed)
    modalElement.addEventListener('hidden.bs.modal', function() {
        isModalOpen = false;
        console.log('Modal closed, resuming scanning');
        // Resume scanning when modal is closed
        resumeScanning();
    });
    
    // Add event listener for when modal is shown
    modalElement.addEventListener('shown.bs.modal', function() {
        console.log('Modal opened, scanner paused');
    });
    
    // Scan Another button - remove any existing listeners to prevent duplicates
    const scanAnotherBtn = document.getElementById('scanAnotherBtn');
    
    // Remove all existing listeners and add new one
    scanAnotherBtn.replaceWith(scanAnotherBtn.cloneNode(true));
    document.getElementById('scanAnotherBtn').addEventListener('click', function() {
        const modalInstance = bootstrap.Modal.getInstance(modalElement);
        if (modalInstance) {
            modalInstance.hide();
        }
    });
});

// Remove duplicate event listeners by cleaning up
window.addEventListener('load', function() {
    // Remove any existing keyboard listeners that might conflict
    document.removeEventListener('keydown', handleEscapeKey);
    document.addEventListener('keydown', handleEscapeKey);
    
    // Remove existing visibility change listener
    document.removeEventListener('visibilitychange', handleVisibilityChange);
    document.addEventListener('visibilitychange', handleVisibilityChange);
});

function handleEscapeKey(e) {
    if (e.key === 'Escape') {
        const modal = document.getElementById('scanResultModal');
        if (modal.classList.contains('show')) {
            // Modal is open, let it close naturally
            return;
        }
    }
}

function handleVisibilityChange() {
    if (!document.hidden && currentScannerType === 'camera' && !isModalOpen) {
        // Page is visible again and modal is not open
        resumeScanning();
    }
}

// ==================== INIT ====================
window.onload = function() {
    applySavedMode();
    applySavedScannerType();
    loadStats();
};

window.addEventListener('beforeunload', function() {
    if (html5QrcodeScanner) { 
        try { 
            html5QrcodeScanner.clear(); 
        } catch(e) {} 
    }
    if (hardwareTimeout) clearTimeout(hardwareTimeout);
});

// Add this new function to maintain focus on hardware input
function maintainHardwareFocus() {
    const input = document.getElementById('hardwareScanInput');
    if (currentScannerType === 'hardware' && hardwareActive && !isModalOpen) {
        // Focus the input
        input.focus();
        
        // Prevent the cursor from being visible (optional)
        // input.style.caretColor = 'transparent'; // Uncomment to hide blinking cursor
    }
}

// Add event listener to refocus when clicking anywhere
document.addEventListener('click', function(e) {
    // Don't refocus if clicking on the input itself or modal is open
    if (e.target.id !== 'hardwareScanInput' && currentScannerType === 'hardware' && hardwareActive && !isModalOpen) {
        setTimeout(() => {
            document.getElementById('hardwareScanInput').focus();
        }, 10);
    }
});

// Also refocus when the page regains focus
window.addEventListener('focus', function() {
    if (currentScannerType === 'hardware' && hardwareActive && !isModalOpen) {
        setTimeout(() => {
            document.getElementById('hardwareScanInput').focus();
        }, 100);
    }
});
</script>

<?= $this->endSection() ?>