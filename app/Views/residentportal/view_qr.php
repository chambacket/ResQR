<?= $this->extend('layout/auth_layout') ?>
<?= $this->section('content') ?>

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

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
  --shadow-md:    0 4px 20px rgba(119,188,63,.14);
  --radius:       14px;
  --radius-sm:    8px;
}

* { box-sizing: border-box; }
body {
  font-family: 'Outfit', sans-serif;
  background: var(--bg);
  color: var(--text-1);
  padding: 36px 16px 60px;
}

.portal-wrap {
  width: 100%; max-width: 480px;
  margin: 0 auto;
  animation: fadeUp .45s ease both;
}
@keyframes fadeUp { from{opacity:0;transform:translateY(14px)}to{opacity:1;transform:none} }

/* ── Branding ── */
.portal-brand {
  text-align: center;
  margin-bottom: 20px;
}
.brand-logo {
  width: 70px; height: 70px; border-radius: 18px;
  object-fit: contain; padding: 6px;
  background: var(--surface); border: 1px solid var(--border);
  box-shadow: 0 6px 18px rgba(119,188,63,.2);
  margin-bottom: 12px;
}
.brand-title { font-size: 1.1rem; font-weight: 800; color: var(--text-1); margin: 0 0 3px; }
.brand-sub   { font-size: .7rem; color: var(--text-3); margin: 0; }

/* ── Main Card ── */
.qr-card {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  box-shadow: var(--shadow-md);
  overflow: hidden;
  margin-bottom: 12px;
}
.qr-card-header {
  background: linear-gradient(135deg, var(--green-deep), var(--green-mid));
  padding: 14px 20px;
  text-align: center;
}
.qr-card-header h6 { font-size: .88rem; font-weight: 800; color: #fff; margin: 0 0 4px; }
.verified-badge {
  display: inline-flex; align-items: center; gap: 5px;
  background: rgba(255,255,255,.2); border: 1px solid rgba(255,255,255,.35);
  border-radius: 20px; padding: 3px 12px;
  font-size: .62rem; font-weight: 700; color: #fff;
}

/* ── QR Code Box ── */
.qr-box {
  padding: 24px 20px 16px;
  text-align: center;
  border-bottom: 1px solid var(--border);
}
.qr-frame {
  display: inline-block;
  background: var(--surface);
  border: 2px solid var(--border);
  border-radius: var(--radius);
  padding: 14px;
  box-shadow: var(--shadow-sm);
  position: relative;
}
.qr-frame img { display: block; border-radius: var(--radius-sm); }

/* Corner accents */
.qr-frame::before, .qr-frame::after,
.qr-frame .corner-br, .qr-frame .corner-bl {
  content: ''; position: absolute;
  width: 18px; height: 18px; border-color: var(--green-mid); border-style: solid;
}
.qr-frame::before  { top: 6px; left: 6px;  border-width: 3px 0 0 3px; border-radius: 4px 0 0 0; }
.qr-frame::after   { top: 6px; right: 6px; border-width: 3px 3px 0 0; border-radius: 0 4px 0 0; }
.qr-frame .corner-br { bottom: 6px; right: 6px; border-width: 0 3px 3px 0; border-radius: 0 0 4px 0; }
.qr-frame .corner-bl { bottom: 6px; left: 6px;  border-width: 0 0 3px 3px; border-radius: 0 0 0 4px; }

.qr-hint { font-size: .65rem; color: var(--text-3); margin-top: 10px; display: flex; align-items: center; justify-content: center; gap: 5px; }

/* ── Info Grid ── */
.info-section { padding: 16px 20px; border-bottom: 1px solid var(--border); }
.info-section-title {
  font-size: .62rem; font-weight: 800; text-transform: uppercase;
  letter-spacing: .6px; color: var(--text-3);
  margin-bottom: 10px; display: flex; align-items: center; gap: 6px;
}
.info-section-title i { color: var(--green-mid); }

.info-row {
  display: flex; align-items: baseline;
  padding: 7px 0; border-bottom: 1px solid var(--border);
  font-size: .75rem;
}
.info-row:last-child { border-bottom: none; }
.info-label { color: var(--text-3); font-weight: 600; min-width: 110px; flex-shrink: 0; }
.info-val   { color: var(--text-1); font-weight: 700; }
.info-val.mono { font-family: 'DM Mono', monospace; font-size: .72rem; }

/* ── Action Button ── */
.card-footer-strip { padding: 14px 20px; background: var(--bg); }
.btn-submit {
  width: 100%; padding: 11px;
  background: linear-gradient(135deg, var(--green-deep), var(--green-mid));
  color: #fff; border: none; border-radius: var(--radius-sm);
  font-size: .82rem; font-weight: 700; cursor: pointer;
  font-family: 'Outfit', sans-serif;
  box-shadow: 0 4px 14px rgba(119,188,63,.35);
  transition: all .2s; display: flex; align-items: center; justify-content: center; gap: 8px;
}
.btn-submit:hover { transform: translateY(-1px); box-shadow: 0 6px 20px rgba(119,188,63,.45); }

/* ── Instructions Panel ── */
.panel {
  background: var(--surface); border: 1px solid var(--border);
  border-radius: var(--radius); overflow: hidden; margin-bottom: 12px;
}
.panel-header {
  display: flex; align-items: center; gap: 10px;
  padding: 12px 16px; border-bottom: 1px solid var(--border);
  background: var(--bg);
}
.panel-header-icon {
  width: 28px; height: 28px; border-radius: 7px;
  display: flex; align-items: center; justify-content: center;
  font-size: .75rem; flex-shrink: 0;
}
.panel-header-icon.green { background: var(--surface2); border: 1px solid var(--green-glow); color: var(--green-deep); }
.panel-header-icon.orange { background: #fff7ed; border: 1px solid #fed7aa; color: var(--orange-deep); }
.panel-header-icon.red    { background: #fff1f2; border: 1px solid #fecaca; color: #c0392b; }
.panel-header-icon.blue   { background: #eff6ff; border: 1px solid #bfdbfe; color: #1d4ed8; }
.panel-header-text strong { font-size: .72rem; color: var(--text-1); display: block; }
.panel-header-text span   { font-size: .62rem; color: var(--text-3); }
.panel-body { padding: 14px 16px; }

/* ── Instructions steps ── */
.step-list { list-style: none; padding: 0; margin: 0; }
.step-list li {
  display: flex; gap: 10px; align-items: flex-start;
  padding: 8px 0; border-bottom: 1px solid var(--border); font-size: .73rem; color: var(--text-2);
}
.step-list li:last-child { border-bottom: none; }
.step-num {
  width: 20px; height: 20px; border-radius: 50%; flex-shrink: 0;
  background: linear-gradient(135deg, var(--green-deep), var(--green-mid));
  color: #fff; font-size: .6rem; font-weight: 800;
  display: flex; align-items: center; justify-content: center;
  margin-top: 1px;
}

/* ── Safety Protocols accordion ── */
.safety-header {
  display: flex; align-items: center; gap: 10px;
  padding: 12px 16px; border-bottom: 1px solid var(--border);
  background: #fff7ed; cursor: pointer; user-select: none;
}
.safety-header-icon {
  width: 28px; height: 28px; border-radius: 7px;
  background: #fff; border: 1px solid #fed7aa; color: var(--orange-deep);
  display: flex; align-items: center; justify-content: center;
  font-size: .78rem; flex-shrink: 0;
}
.safety-header-text { flex: 1; }
.safety-header-text strong { font-size: .72rem; color: #92400e; display: block; }
.safety-header-text span   { font-size: .62rem; color: var(--orange-deep); }
.safety-chevron { font-size: .7rem; color: var(--orange-deep); transition: transform .25s; }
.safety-chevron.open { transform: rotate(180deg); }

.safety-body { display: none; }
.safety-body.open { display: block; }

.safety-protocol {
  padding: 12px 16px; border-bottom: 1px solid var(--border);
  display: flex; gap: 12px; align-items: flex-start;
}
.safety-protocol:last-child { border-bottom: none; }
.sp-icon {
  width: 32px; height: 32px; border-radius: 8px; flex-shrink: 0;
  display: flex; align-items: center; justify-content: center; font-size: .82rem;
}
.sp-icon.orange { background: #fff7ed; color: var(--orange-deep); }
.sp-icon.red    { background: #fff1f2; color: #c0392b; }
.sp-icon.blue   { background: #eff6ff; color: #1d4ed8; }
.sp-icon.green  { background: var(--surface2); color: var(--green-deep); }
.sp-icon.amber  { background: #fffbeb; color: #92400e; }
.sp-title { font-size: .73rem; font-weight: 800; color: var(--text-1); margin-bottom: 2px; }
.sp-desc  { font-size: .68rem; color: var(--text-3); line-height: 1.5; }

/* ── Alert banner ── */
.alert-banner {
  display: flex; gap: 10px; align-items: flex-start;
  background: #fff1f2; border: 1px solid #fecaca; border-radius: var(--radius-sm);
  padding: 10px 14px; margin: 0 16px 14px; font-size: .68rem; color: #c0392b;
  line-height: 1.5;
}
.alert-banner i { margin-top: 2px; flex-shrink: 0; }

/* ── Exit link ── */
.exit-link {
  display: block; text-align: center; margin-top: 10px;
  font-size: .7rem; color: var(--text-3); text-decoration: none;
  transition: color .2s;
}
.exit-link:hover { color: var(--green-deep); }

/* ── Print ── */
@media print {
  body * { visibility: hidden; }
  .qr-card, .qr-card * { visibility: visible; }
  .qr-card { position: absolute; left: 0; top: 0; width: 100%; border: none !important; box-shadow: none !important; }
  .card-footer-strip { display: none !important; }
}
</style>

<div class="portal-wrap">

  <!-- Branding -->
  <div class="portal-brand">
    <img src="/uploads/logo.png" alt="Municipality of Mambajao" class="brand-logo"><br>
    <h1 class="brand-title">Your FACED QR Code</h1>
    <p class="brand-sub">Municipality of Mambajao, Camiguin</p>
  </div>

  <!-- QR Card -->
  <div class="qr-card">
    <div class="qr-card-header">
      <h6><i class="fa-solid fa-id-card me-2"></i>Family Access Card in Emergencies and Disaster</h6>
      <span class="verified-badge">
        <i class="fa-solid fa-circle-check"></i> Verified &amp; Ready for Claiming
      </span>
    </div>

    <!-- QR Code -->
    <div class="qr-box">
      <div class="qr-frame">
        <img src="https://api.qrserver.com/v1/create-qr-code/?size=220x220&data=<?= urlencode($resident['qr_code_token']) ?>"
             alt="Resident QR Code" width="220" height="220">
        <span class="corner-br"></span>
        <span class="corner-bl"></span>
      </div>
      <p class="qr-hint">
        <i class="fa-solid fa-mobile-screen"></i>
        Save this to your gallery or print it for distribution
      </p>
    </div>

    <!-- Personal Information -->
    <div class="info-section">
      <div class="info-section-title">
        <i class="fa-solid fa-user"></i> Personal Information
      </div>
      <div class="info-row">
        <span class="info-label">Full Name</span>
        <span class="info-val"><?= esc(trim($resident['first_name'] . ' ' . $resident['last_name'])) ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Household No.</span>
        <span class="info-val mono"><?= esc($resident['household_no']) ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Birthdate</span>
        <span class="info-val"><?= !empty($resident['birthdate']) ? date('F d, Y', strtotime($resident['birthdate'])) : 'N/A' ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Age</span>
        <span class="info-val"><?= esc($resident['age'] ?? 'N/A') ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Sex</span>
        <span class="info-val"><?= esc($resident['sex'] ?? 'N/A') ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Barangay</span>
        <span class="info-val"><?= esc($resident['barangay'] ?? 'N/A') ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Contact</span>
        <span class="info-val mono"><?= esc($resident['contact_number'] ?? 'N/A') ?></span>
      </div>
    </div>

    <!-- Action -->
    <div class="card-footer-strip">
      <button onclick="window.print()" class="btn-submit">
        <i class="fa-solid fa-print"></i> Download or Print QR Code
      </button>
    </div>
  </div>

  <!-- Instructions Panel -->
  <div class="panel">
    <div class="panel-header">
      <div class="panel-header-icon green"><i class="fa-solid fa-list-check"></i></div>
      <div class="panel-header-text">
        <strong>How to Use Your QR Code</strong>
        <span>Steps for claiming your relief goods</span>
      </div>
    </div>
    <div class="panel-body">
      <ol class="step-list">
        <li>
          <span class="step-num">1</span>
          <span>Save this QR code to your phone gallery or print a copy to keep with you.</span>
        </li>
        <li>
          <span class="step-num">2</span>
          <span>Go to the designated <strong>Distribution Point</strong> in your barangay at the scheduled time.</span>
        </li>
        <li>
          <span class="step-num">3</span>
          <span>Present this QR code to the relief distributor for scanning. Only the <strong>household head or an authorized representative</strong> may claim.</span>
        </li>
        <li>
          <span class="step-num">4</span>
          <span>Wait for the scanner to confirm your eligibility. Each household may only claim <strong>once per distribution</strong>.</span>
        </li>
        <li>
          <span class="step-num">5</span>
          <span>If you lose your FACED card or QR code, report to the registration desk. Replacement is charged <strong>₱50.00</strong>.</span>
        </li>
      </ol>
    </div>
  </div>

  <!-- Disaster Safety Protocols -->
  <div class="panel">
    <div class="safety-header" onclick="toggleSafety(this)">
      <div class="safety-header-icon"><i class="fa-solid fa-triangle-exclamation"></i></div>
      <div class="safety-header-text">
        <strong>Disaster Safety Protocols</strong>
        <span>Important guidelines during emergencies — tap to read</span>
      </div>
      <i class="fa-solid fa-chevron-down safety-chevron"></i>
    </div>
    <div class="safety-body">

      <div class="alert-banner">
        <i class="fa-solid fa-circle-exclamation"></i>
        <span>During a disaster, your safety is the top priority. Please follow all instructions from barangay officials, PNP, and BFP personnel at all times.</span>
      </div>

      <div class="safety-protocol">
        <div class="sp-icon orange"><i class="fa-solid fa-person-running"></i></div>
        <div>
          <div class="sp-title">Evacuate Immediately When Ordered</div>
          <div class="sp-desc">Follow pre-emptive evacuation orders issued by your Barangay LDRRMC. Proceed to your designated evacuation center calmly and bring your FACED card. Do not wait for floodwaters to rise or structures to weaken.</div>
        </div>
      </div>

      <div class="safety-protocol">
        <div class="sp-icon blue"><i class="fa-solid fa-location-pin"></i></div>
        <div>
          <div class="sp-title">Know Your Distribution Point</div>
          <div class="sp-desc">Distribution schedules and locations are announced publicly through barangay channels. Go only to your assigned distribution point. Unauthorized or separate distributions not coordinated with the MRDC are prohibited.</div>
        </div>
      </div>

      <div class="safety-protocol">
        <div class="sp-icon green"><i class="fa-solid fa-users-line"></i></div>
        <div>
          <div class="sp-title">Follow Queue and Crowd Guidelines</div>
          <div class="sp-desc">PNP and Barangay Peacekeeping Action Teams (BPATs) are deployed at distribution points. Respect the queue, avoid crowding, and follow security personnel's instructions. Priority lanes are available for PWDs, pregnant women, senior citizens, and lactating mothers.</div>
        </div>
      </div>

      <div class="safety-protocol">
        <div class="sp-icon amber"><i class="fa-solid fa-box-open"></i></div>
        <div>
          <div class="sp-title">One Claim Per Household</div>
          <div class="sp-desc">Each FACED QR code is linked to one registered household. Attempting to claim multiple times or for another household is a violation of the Mambajao Relief Goods Distribution Ordinance and is subject to penalties.</div>
        </div>
      </div>

      <div class="safety-protocol">
        <div class="sp-icon red"><i class="fa-solid fa-ban"></i></div>
        <div>
          <div class="sp-title">Report Violations Immediately</div>
          <div class="sp-desc">Any acts of hoarding, diversion, politicking, or demanding payment in exchange for relief goods are strictly prohibited. Report violations immediately to the nearest barangay official, PNP, or MDRRMO personnel.</div>
        </div>
      </div>

      <div class="safety-protocol">
        <div class="sp-icon blue"><i class="fa-solid fa-phone-volume"></i></div>
        <div>
          <div class="sp-title">Emergency Contacts</div>
          <div class="sp-desc">Keep the following on hand: your <strong>Barangay Hotline</strong>, <strong>Mambajao MPS (PNP)</strong>, <strong>Bureau of Fire Protection (BFP)</strong>, and the <strong>MDRRMO</strong>. In life-threatening situations, call <strong>911</strong> immediately.</div>
        </div>
      </div>

    </div><!-- /safety-body -->
  </div><!-- /panel -->

  <a href="/" class="exit-link">
    <i class="fa-solid fa-arrow-left me-1"></i> Exit Portal
  </a>

</div><!-- /portal-wrap -->

<script>
function toggleSafety(header) {
  const body    = header.nextElementSibling;
  const chevron = header.querySelector('.safety-chevron');
  const isOpen  = body.classList.contains('open');
  body.classList.toggle('open', !isOpen);
  chevron.classList.toggle('open', !isOpen);
}
</script>

<?= $this->endSection() ?>