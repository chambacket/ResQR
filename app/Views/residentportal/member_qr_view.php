<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Family Member QR Code - <?= esc($full_name) ?></title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800&family=DM+Mono:wght@400;500&display=swap');

    :root {
      --green-deep:   #4a7a26;
      --green-mid:    #77BC3F;
      --green-glow:   #b8e48a;
      --orange-deep:  #c96b10;
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

    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: 'Outfit', sans-serif;
      background: var(--bg);
      color: var(--text-1);
      min-height: 100vh;
      padding: 36px 16px 60px;
    }

    .portal-wrap {
      width: 100%; max-width: 480px;
      margin: 0 auto;
      animation: fadeUp .45s ease both;
    }
    @keyframes fadeUp { from{opacity:0;transform:translateY(14px)}to{opacity:1;transform:none} }

    /* ── Branding ── */
    .portal-brand { text-align: center; margin-bottom: 20px; }
    .brand-logo {
      width: 70px; height: 70px; border-radius: 18px;
      object-fit: contain; padding: 6px;
      background: var(--surface); border: 1px solid var(--border);
      box-shadow: 0 6px 18px rgba(119,188,63,.2);
      margin-bottom: 12px;
    }
    .brand-title { font-size: 1.1rem; font-weight: 800; color: var(--text-1); margin: 0 0 3px; }
    .brand-sub   { font-size: .7rem; color: var(--text-3); }

    /* ── Card ── */
    .qr-card {
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: var(--radius);
      box-shadow: var(--shadow-md);
      overflow: hidden;
      margin-bottom: 12px;
    }

    /* Orange-tinted header to distinguish member from household */
    .qr-card-header {
      background: linear-gradient(135deg, var(--orange-deep), #f97316);
      padding: 14px 20px; text-align: center;
    }
    .qr-card-header h6 { font-size: .88rem; font-weight: 800; color: #fff; margin: 0 0 6px; }
    .member-badge {
      display: inline-flex; align-items: center; gap: 6px;
      background: rgba(255,255,255,.2); border: 1px solid rgba(255,255,255,.35);
      border-radius: 20px; padding: 4px 14px;
      font-size: .72rem; font-weight: 800; color: #fff;
    }
    .household-ref {
      font-size: .65rem; color: rgba(255,255,255,.75);
      margin-top: 6px;
    }

    /* ── QR Box ── */
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
    .qr-frame::before, .qr-frame::after,
    .qr-frame .corner-br, .qr-frame .corner-bl {
      content: ''; position: absolute;
      width: 18px; height: 18px; border-color: #f97316; border-style: solid;
    }
    .qr-frame::before  { top:6px;    left:6px;  border-width: 3px 0 0 3px; border-radius: 4px 0 0 0; }
    .qr-frame::after   { top:6px;    right:6px; border-width: 3px 3px 0 0; border-radius: 0 4px 0 0; }
    .qr-frame .corner-br { bottom:6px; right:6px; border-width: 0 3px 3px 0; border-radius: 0 0 4px 0; }
    .qr-frame .corner-bl { bottom:6px; left:6px;  border-width: 0 0 3px 3px; border-radius: 0 0 0 4px; }

    .qr-hint {
      font-size: .65rem; color: var(--text-3); margin-top: 10px;
      display: flex; align-items: center; justify-content: center; gap: 5px;
    }

    /* ── Info Rows ── */
    .info-section { padding: 16px 20px; }
    .info-section-title {
      font-size: .62rem; font-weight: 800; text-transform: uppercase;
      letter-spacing: .6px; color: var(--text-3);
      margin-bottom: 10px; display: flex; align-items: center; gap: 6px;
    }
    .info-section-title i { color: #f97316; }
    .info-row {
      display: flex; align-items: baseline;
      padding: 7px 0; border-bottom: 1px solid var(--border); font-size: .75rem;
    }
    .info-row:last-child { border-bottom: none; }
    .info-label { color: var(--text-3); font-weight: 600; min-width: 120px; flex-shrink: 0; }
    .info-val   { color: var(--text-1); font-weight: 700; }
    .info-val.mono { font-family: 'DM Mono', monospace; font-size: .72rem; }

    /* ── Footer ── */
    .card-footer-strip {
      padding: 14px 20px; background: var(--bg);
      border-top: 1px solid var(--border);
      display: flex; gap: 8px;
    }
    .btn-submit {
      flex: 1; padding: 11px;
      background: linear-gradient(135deg, var(--orange-deep), #f97316);
      color: #fff; border: none; border-radius: var(--radius-sm);
      font-size: .78rem; font-weight: 700; cursor: pointer;
      font-family: 'Outfit', sans-serif;
      box-shadow: 0 4px 14px rgba(201,107,16,.3);
      transition: all .2s; display: flex; align-items: center; justify-content: center; gap: 7px;
    }
    .btn-submit:hover { transform: translateY(-1px); }
    .btn-back {
      display: inline-flex; align-items: center; gap: 6px;
      padding: 11px 16px; border-radius: var(--radius-sm);
      border: 1.5px solid var(--border); background: var(--surface);
      font-size: .78rem; font-weight: 600; color: var(--text-2);
      text-decoration: none; transition: all .2s; font-family: 'Outfit', sans-serif;
    }
    .btn-back:hover { border-color: var(--green-mid); color: var(--green-deep); background: var(--surface2); }

    /* ── Exit link ── */
    .exit-link {
      display: block; text-align: center; margin-top: 10px;
      font-size: .7rem; color: var(--text-3); text-decoration: none; transition: color .2s;
    }
    .exit-link:hover { color: var(--green-deep); }

    /* ── Print ── */
    @media print {
      body { background: #fff; padding: 0; }
      .no-print { display: none !important; }
      .qr-card { box-shadow: none; border: none; }
      .portal-brand, .exit-link { display: none; }
    }
  </style>
</head>
<body>

<div class="portal-wrap">

  <!-- Branding -->
  <div class="portal-brand no-print">
    <img src="/uploads/logo.png" alt="Municipality of Mambajao" class="brand-logo"><br>
    <div class="brand-title">Family Member QR Code</div>
    <div class="brand-sub">Municipality of Mambajao, Camiguin</div>
  </div>

  <!-- QR Card -->
  <div class="qr-card">
    <div class="qr-card-header">
      <h6><i class="fa-solid fa-user me-2"></i>Family Member — FACED QR Code</h6>
      <div class="member-badge">
        <i class="fa-solid fa-user-tag"></i> <?= esc($full_name) ?>
      </div>
      <div class="household-ref">
        <i class="fa-solid fa-house me-1"></i>Household <?= esc($household_no) ?> &mdash; <?= esc($head_name) ?>
      </div>
    </div>

    <!-- QR Code -->
    <div class="qr-box">
      <div class="qr-frame">
        <img src="https://api.qrserver.com/v1/create-qr-code/?size=220x220&data=<?= urlencode($qr_token) ?>"
             alt="QR Code for <?= esc($full_name) ?>" width="220" height="220">
        <span class="corner-br"></span>
        <span class="corner-bl"></span>
      </div>
      <p class="qr-hint">
        <i class="fa-solid fa-mobile-screen"></i>
        Scan to verify family member identity at distribution
      </p>
    </div>

    <!-- Member Info -->
    <div class="info-section">
      <div class="info-section-title">
        <i class="fa-solid fa-id-card"></i> Member Information
      </div>
      <div class="info-row">
        <span class="info-label">Full Name</span>
        <span class="info-val"><?= esc($full_name) ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Relationship</span>
        <span class="info-val"><?= esc($member['relation'] ?? 'N/A') ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Birthdate</span>
        <span class="info-val"><?= !empty($member['birthdate']) ? date('F d, Y', strtotime($member['birthdate'])) : 'N/A' ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Age</span>
        <span class="info-val"><?= esc($member['age'] ?? 'N/A') ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Sex</span>
        <span class="info-val"><?= esc($member['sex'] ?? 'N/A') ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Household No.</span>
        <span class="info-val mono"><?= esc($household_no) ?></span>
      </div>
    </div>

    <!-- Actions -->
    <div class="card-footer-strip no-print">
      <button onclick="window.print()" class="btn-submit">
        <i class="fa-solid fa-print"></i> Print QR Code
      </button>
      <a href="/beneficiaries" class="btn-back">
        <i class="fa-solid fa-arrow-left"></i> Back
      </a>
    </div>
  </div>

  <a href="/" class="exit-link no-print">
    <i class="fa-solid fa-arrow-left me-1"></i> Exit Portal
  </a>

</div>

</body>
</html>