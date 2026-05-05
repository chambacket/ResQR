<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Household QR Code - <?= esc($household_no) ?></title>
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
    .qr-card-header {
      background: linear-gradient(135deg, var(--green-deep), var(--green-mid));
      padding: 14px 20px; text-align: center;
    }
    .qr-card-header h6 { font-size: .88rem; font-weight: 800; color: #fff; margin: 0 0 6px; }
    .household-badge {
      display: inline-flex; align-items: center; gap: 6px;
      background: rgba(255,255,255,.2); border: 1px solid rgba(255,255,255,.35);
      border-radius: 20px; padding: 4px 14px;
      font-size: .75rem; font-weight: 800; color: #fff;
      font-family: 'DM Mono', monospace;
    }
    .head-name {
      font-size: .68rem; color: rgba(255,255,255,.8);
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
    /* Corner accents */
    .qr-frame::before, .qr-frame::after,
    .qr-frame .corner-br, .qr-frame .corner-bl {
      content: ''; position: absolute;
      width: 18px; height: 18px; border-color: var(--green-mid); border-style: solid;
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
    .info-section { padding: 16px 20px; border-bottom: 1px solid var(--border); }
    .info-section-title {
      font-size: .62rem; font-weight: 800; text-transform: uppercase;
      letter-spacing: .6px; color: var(--text-3);
      margin-bottom: 10px; display: flex; align-items: center; gap: 6px;
    }
    .info-section-title i { color: var(--green-mid); }
    .info-row {
      display: flex; align-items: baseline;
      padding: 7px 0; border-bottom: 1px solid var(--border); font-size: .75rem;
    }
    .info-row:last-child { border-bottom: none; }
    .info-label { color: var(--text-3); font-weight: 600; min-width: 130px; flex-shrink: 0; }
    .info-val   { color: var(--text-1); font-weight: 700; }
    .info-val.mono { font-family: 'DM Mono', monospace; font-size: .72rem; }

    /* ── Family Members ── */
    .members-section { padding: 16px 20px; }
    .member-row {
      display: flex; align-items: center; justify-content: space-between; gap: 10px;
      padding: 9px 0; border-bottom: 1px solid var(--border); font-size: .73rem;
    }
    .member-row:last-child { border-bottom: none; }
    .member-left { display: flex; flex-direction: column; gap: 1px; }
    .member-name { font-weight: 700; color: var(--text-1); font-size: .75rem; }
    .member-meta { font-size: .62rem; color: var(--text-3); }
    .btn-qr-link {
      display: inline-flex; align-items: center; gap: 5px;
      padding: 4px 10px; border-radius: 20px; font-size: .62rem; font-weight: 700;
      background: var(--surface2); border: 1px solid var(--green-glow);
      color: var(--green-deep); text-decoration: none; white-space: nowrap;
      transition: all .2s;
    }
    .btn-qr-link:hover { background: var(--green-glow); color: var(--green-deep); }

    /* ── Footer actions ── */
    .card-footer-strip { padding: 14px 20px; background: var(--bg); display: flex; gap: 8px; }
    .btn-submit {
      flex: 1; padding: 11px;
      background: linear-gradient(135deg, var(--green-deep), var(--green-mid));
      color: #fff; border: none; border-radius: var(--radius-sm);
      font-size: .78rem; font-weight: 700; cursor: pointer;
      font-family: 'Outfit', sans-serif;
      box-shadow: 0 4px 14px rgba(119,188,63,.35);
      transition: all .2s; display: flex; align-items: center; justify-content: center; gap: 7px;
    }
    .btn-submit:hover { transform: translateY(-1px); }
    .btn-back {
      display: inline-flex; align-items: center; gap: 6px;
      padding: 11px 16px; border-radius: var(--radius-sm);
      border: 1.5px solid var(--border); background: var(--surface);
      font-size: .78rem; font-weight: 600; color: var(--text-2);
      text-decoration: none; transition: all .2s; font-family: 'Outfit', sans-serif;
      cursor: pointer;
    }
    .btn-back:hover { border-color: var(--green-mid); color: var(--green-deep); background: var(--surface2); }

    /* ── Exit link ── */
    .exit-link {
      display: block; text-align: center; margin-top: 10px;
      font-size: .7rem; color: var(--text-3); text-decoration: none; transition: color .2s;
    }
    .exit-link:hover { color: var(--green-deep); }

    /* ── Empty members ── */
    .empty-state {
      text-align: center; padding: 20px; color: var(--text-3); font-size: .72rem;
    }
    .empty-state i { font-size: 1.4rem; margin-bottom: 6px; display: block; color: var(--border); }

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
    <div class="brand-title">Household QR Code</div>
    <div class="brand-sub">Municipality of Mambajao, Camiguin</div>
  </div>

  <!-- QR Card -->
  <div class="qr-card">
    <div class="qr-card-header">
      <h6><i class="fa-solid fa-house me-2"></i>Family Access Card in Emergencies and Disaster</h6>
      <div class="household-badge">
        <i class="fa-solid fa-hashtag"></i><?= esc($household_no) ?>
      </div>
      <div class="head-name">
        <i class="fa-solid fa-user me-1"></i>Head of Family: <?= esc($head_name) ?>
      </div>
    </div>

    <!-- QR Code -->
    <div class="qr-box">
      <div class="qr-frame">
        <?php if (!empty($household_qr_token)): ?>
          <img src="https://api.qrserver.com/v1/create-qr-code/?size=220x220&data=<?= urlencode($household_qr_token) ?>"
               alt="Household QR Code" width="220" height="220">
        <?php else: ?>
          <img src="https://api.qrserver.com/v1/create-qr-code/?size=220x220&data=<?= urlencode($household_no) ?>"
               alt="Household QR Code" width="220" height="220">
        <?php endif; ?>
        <span class="corner-br"></span>
        <span class="corner-bl"></span>
      </div>
      <p class="qr-hint">
        <i class="fa-solid fa-mobile-screen"></i>
        Scan to verify household information at distribution
      </p>
    </div>

    <!-- Household Summary -->
    <div class="info-section">
      <div class="info-section-title">
        <i class="fa-solid fa-house"></i> Household Summary
      </div>
      <div class="info-row">
        <span class="info-label">Household No.</span>
        <span class="info-val mono"><?= esc($household_no) ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Head of Family</span>
        <span class="info-val"><?= esc($head_name) ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Total Members</span>
        <span class="info-val"><?= esc($total_members) ?> member<?= $total_members != 1 ? 's' : '' ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Barangay</span>
        <span class="info-val"><?= esc($resident['barangay'] ?? 'N/A') ?></span>
      </div>
      <div class="info-row">
        <span class="info-label">Contact Number</span>
        <span class="info-val mono"><?= esc($resident['contact_number'] ?? 'N/A') ?></span>
      </div>
    </div>

    <!-- Family Members -->
    <?php if (!empty($family_members)): ?>
    <div class="members-section">
      <div class="info-section-title" style="margin-bottom:10px">
        <i class="fa-solid fa-users"></i> Family Members
      </div>
      <?php foreach ($family_members as $member): ?>
      <div class="member-row">
        <div class="member-left">
          <span class="member-name"><?= esc($member['name'] ?? '') ?></span>
          <span class="member-meta">
            <?= esc($member['relation'] ?? '') ?><?= !empty($member['age']) ? ' · ' . $member['age'] . ' yrs' : '' ?>
          </span>
        </div>
        <?php if (!empty($member['qr_code_token'])): ?>
        <a href="/residentportal/view-member-qr/<?= $resident['id'] ?>/<?= $member['id'] ?>"
           class="btn-qr-link no-print" target="_blank">
          <i class="fa-solid fa-qrcode"></i> View QR
        </a>
        <?php endif; ?>
      </div>
      <?php endforeach; ?>
    </div>
    <?php else: ?>
    <div class="members-section">
      <div class="info-section-title" style="margin-bottom:8px">
        <i class="fa-solid fa-users"></i> Family Members
      </div>
      <div class="empty-state">
        <i class="fa-solid fa-user-slash"></i>
        No additional family members registered.
      </div>
    </div>
    <?php endif; ?>

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