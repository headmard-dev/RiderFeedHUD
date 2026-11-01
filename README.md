# RiderFeedHUD v12 (v2.2.0) — Sauce for Zwift Tactical Overlay Mod

**RiderFeedHUD v12** is a universal, transparent, frameless tactical overlay mod for **Sauce for Zwift**. It provides real-time pack telemetry, age-calibrated 256-colour heart rate spectrum bars, instant **Orange Full-Row Attack Alerts**, a **WKG-only** power-to-weight display, a personal **5-Minute FTP (`3.40 W/kg`) Countdown Tank**, a **1-Minute WTRL TTT Pull Pacer**, **Heart Rate Zone 5/6/7 Redline Timers**, live **Climb %**, and **Gap Velocity / Draft Elastic Snap Warnings**.

---

## What's New in v12

1. **Orange Full-Row Attack Alert (with Reversed Dark Font):**
   - Whenever any rider attacks (`>= 4.5 W/kg` by default, adjustable via the top `Atk` slider from `3.5` to `6.5 W/kg`, or surging `+1.0 W/kg` above their rolling baseline while `>= 3.8 W/kg`), their **entire row turns vibrant Orange** with an `ATK` tag.
   - All text on an attacking row automatically **reverses to bold black (`#090d16`)** with a dark/gold `WKG` badge so numbers remain effortless to read at a glance.
2. **Clean `WKG`-Only Column:**
   - Displays each rider's **W/kg to two decimal places** (e.g., `3.40`) inside a high-contrast zone badge (Z1–Z7), removing raw wattage clutter so you can concertina the column narrower.
3. **Personal 5-Minute FTP (`3.40 W/kg`) Countdown Tank (`5:00` -> `0:00`):**
   - Dedicated left-hand gauge in the Personal Tactical Bar above the table headers, pre-set to `3.40 W/kg` (adjustable in `0.05 W/kg` steps via `−` / `+` buttons).
   - Counts down from `5:00` (`300s`) whenever you ride at or above your 5-minute threshold, flashes red (`BLOW-UP!`) under `1:00` remaining, and recharges at `+0.5s/sec` when you drop back below threshold.
4. **1-Minute WTRL TTT Pull Pacer & Countdown (`60s` -> `0s`):**
   - Dedicated right-hand gauge in the Personal Tactical Bar with `−` / `+` buttons (`0.05 W/kg` steps) to dial in whatever pull target your WTRL TTT captain calls.
   - Automatically starts counting down `60s -> 0s` when you reach target W/kg (or click `Pull` to start/reset manually), and auto-resets to `60s` after 5 seconds back in the draft.
   - Colour-coded pacing feedback: **Green (`PULL OK`)** when on target, **Blue (`PUSH +X.XX`)** when under target, **Flashing Red (`EASE -X.XX`)** when pulling `> +0.20 W/kg` too hard (protecting teammates on your wheel), and **Purple/Gold (`DONE! DROP BACK`)** at `0s`.
5. **Heart Rate Zone 5 / 6 / 7 Redline Timer (`RED 0-120s`):**
   - Triggers **only when a rider enters Heart Rate Zone 5, 6, or 7** (`>= 90%` of Age-Computed Max HR by default, adjustable from `85%` to `96%` via the top `Z5/6/7` slider).
   - Riders sitting in Zone 4 (`80%–89%` Max HR) during a race no longer trigger false redline alarms.
   - Displays the exact redline zone (`Z5`, `Z6`, or `Z7`) inside the flashing red timer box alongside accumulated seconds (`0s` to `120s`).

---

## Quick One-Click Installation (Windows & Mac)

### Windows One-Click Install (`install_RiderFeedHUD.bat`)
1. Open **`RiderFeedHUD_Installer-v12.zip`** and double-click **`install_RiderFeedHUD.bat`**.
   - *Note:* `install_RiderFeedHUD.bat` is completely self-contained and installs `manifest.json`, `pages/hud.html`, `README.md`, and `HELP.md` into your `Documents\SauceMods\RiderFeedHUD` folder automatically—even if launched directly from inside the ZIP archive.
   - If Windows SmartScreen displays *"Windows protected your PC"*, click **More info** -> **Run anyway**.
2. **Reload in Sauce for Zwift:**
   - Click inside the open HUD window and press **`Ctrl + R`** (or restart Sauce for Zwift and toggle **`Rider Telemetry HUD v12`** to **On** under **Sauce Settings -> Windows**).

### Mac One-Click Install (`install_RiderFeedHUD.command`)
1. Double-click **`RiderFeedHUD_Installer-v12.zip`** in **Finder** to unzip it.
2. Double-click **`install_RiderFeedHUD.command`**.
   - *Tip:* If macOS Gatekeeper shows an *"unidentified developer"* prompt on first click, **Right-Click (or Ctrl-Click) `install_RiderFeedHUD.command` -> Click Open -> Click Open**.
   - The script automatically creates `~/Documents/SauceMods/RiderFeedHUD/pages`, installs `manifest.json`, `pages/hud.html`, `README.md`, and `HELP.md`, and clears any macOS quarantine flags.
3. **Reload in Sauce for Zwift on Mac:**
   - Click inside the open HUD window and press **`Cmd + R`** (or restart Sauce for Zwift and toggle **`Rider Telemetry HUD v12`** to **On** under **Sauce Settings -> Windows**).

---

## Manual Installation

Copy the `RiderFeedHUD` folder into your Windows `Documents\SauceMods` directory:

```text
Documents/
└── SauceMods/
    └── RiderFeedHUD/
        ├── manifest.json
        ├── README.md
        ├── HELP.md
        └── pages/
            └── hud.html
```

---

## The 9 Telemetry Columns (Left to Right)

| # | Header | Description |
| :--- | :--- | :--- |
| **1** | **`Rider`** | Rider name + **Full-Height 256-Colour HR Bar** on `YOU` (`55 BPM` Deep Blue to `Age Max HR` Dark Red) + smaller `5px` age-calibrated HR spectrum bars on all other riders + `ATK` badge when attacking. |
| **2** | **`WKG`** | Live power-to-weight ratio (`W/kg` to 2 decimal places, e.g., `3.40`) colour-coded across 7 cycling power zones (`Z1`–`Z7`). |
| **3** | **`HR`** | Live Heart Rate (`bpm`). Flashes bright red when the rider enters **Zone 5, 6, or 7** (`>= 90%` of Age Max HR). |
| **4** | **`RED 0-120s`** | Cumulative time (`0s` to `120s`) spent in **HR Zone 5, 6, or 7** (`Z5`, `Z6`, `Z7`). Counts up `+1s/sec` in Z5–Z7 and cools down `-0.5s/sec` in Z1–Z4. |
| **5** | **`AGE`** | Rider's Zwift age, used to compute their personal Max HR via `round(208 - 0.7 * Age)`. |
| **6** | **`Weight`** | Rider's weight in kilograms (`kg`). |
| **7** | **`Draft`** | Live draft savings in Watts (`W`), highlighted in sky blue when actively drafting. |
| **8** | **`Climb %`** | Live road gradient (`%`) colour-coded from sky-blue descents (`<=-1.5%`) to yellow (`2%+`), orange (`5%+`), and red HC ramps (`8%+`). |
| **9** | **`Gap`** | Time gap (`s`) to you + live velocity arrow (`▲` closing / `▼` opening / `•` steady). Flashes **Amber/Orange** when a wheel ahead (`-1.3s` to `-3.3s`) is slipping away and the draft elastic is about to snap. |
