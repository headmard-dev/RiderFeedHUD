# Master Unified RiderFeedHUD & WOW 0-100 Ribbon v22.1 — Sauce for Zwift (Windows & Mac)

**Master Unified RiderFeedHUD v22.1** (and the standalone **WOW 0-100 All-Categories Ribbon v22.1** addon) is an all-in-one tactical overlay suite for **Sauce for Zwift**, engineered for **WOW Ride Leaders, Co-Leaders, Sweeps, Group Riders, and Racers** across **Weekly 100K TTT**, **Monthly 100-Mile / Watopia 150 (32 Laps)**, **40K Recovery**, and **Scratch Races**.

> **100% Universal for Every Rider:** Automatically detects **your own Zwift Name, Age, Weight, and Age-Calibrated Max Heart Rate** (`round(208 - 0.7 × Age)`) directly from Sauce on your computer—no manual profile editing required!

---

## What's New in v22.1

- **Editable Leader Names for All 5 Groups (`🟣 E`, `🟡 D`, `🔵 C`, `🟢 B`, `🔴 A`):**
  - Dedicated **`✏️ 5-Group Names`** bar in the Ribbon lets you enter the Ride Leader or Group Name for every pen (`🟡 D` pre-filled as `Mark`, customizable for any rider) and toggle the input strip open/closed anytime.
  - Every group's floating callout box renders **3 clear lines**: **Line 1: Category & Leader Name** (`👑 D • Mark`), **Line 2: Distance / Fence Alert**, and **Line 3: Exact Road Time Gap** (`⏱️ -6m 41s`).
  - **Live Zwift Yellow Beacon (`eventLeader`) Auto-Detection:** Automatically reads live Yellow Beacon names from Zwift for any category without a manual override.
- **True Pixel Bounding-Box Juxtaposition & Horizontal Elbow Bridges (Zero Overlap / Zero Clipping):**
  - Places callouts across 4 safe vertical lanes (`56px` Tall and `11px` Short above & below the `0 → 100` ruler) so boxes never clip outside the window.
  - Measures actual rendered pixel widths (`offsetWidth`) on every frame and slides converging boxes horizontally to sit **strictly side-by-side**, connected to their vertical stem via a colour-coded horizontal elbow bridge (`.stem-bridge`).
- **1-Click `MY CAT: E | D | C | B | A` Selector:**
  - Switch your active category in one click on the Ribbon header—dynamically moves the `👑` crown and progress fill to your selected pen and recalculates all `+ / -` distances and road time gaps relative to your group.
- **Road-Time-Gap `<= 2m 00s` `🚧 FENCE OFF!` + `D Catching E` Overtake Alerts:**
  - Triggers flashing **`🚧 FENCE OFF!`** alerts at `<= 120s` (`2m 00s`) road time gap both when faster chasers (`C`, `B`, `A`) catch your group from behind **and** when your group (`D`) catches slower `Cat E` ahead (`🚧 E FENCE OFF! (GROUP D Catching Cat E)`), including Simulator Scenario **`6️⃣ 🚨 D → E!`**.

---

## Quick 1-Click Installation (Windows & Mac)

### Option A: Full Master Unified HUD + Detachable 0-100 Ribbon (`RiderFeedHUD`)
1. Click **Code -> Download ZIP** on GitHub and extract the ZIP folder (or `git clone` this repository).
2. **Windows:** Double-click **`install_RiderFeedHUD_Unified.bat`** (if Windows SmartScreen prompts, click **More info** -> **Run anyway**).
3. **macOS:** Double-click **`install_RiderFeedHUD_Unified.command`** (if Gatekeeper prompts on first run, **Right-Click -> Open -> Open**).
4. Open **Sauce for Zwift -> Settings (⚙️) -> Windows** and enable **`Master Unified HUD v22.1`** (or click inside an open HUD/Ribbon window and press **`Ctrl + R`** / **`Cmd + R`**).

### Option B: Standalone 0-100 Ribbon Addon Only (`WOW_0_100_Ribbon`)
1. **Windows:** Double-click **`install_WOW_0_100_Ribbon.bat`**.
2. **macOS:** Double-click **`install_WOW_0_100_Ribbon.command`**.
3. Open **Sauce for Zwift -> Settings (⚙️) -> Windows** and enable **`WOW 0-100 All-Categories Ribbon v22.1`**.

---

## Core Tactical Systems

### 1. Built-In & Detachable `0 → 100` All-Categories Vertical-Stem Ribbon (`📏 0-100 ↗`)
- **All 5 WOW Categories Moving Left-to-Right (`0` to `100`):** Tracks **🟣 Cat E (`13:30`)**, **🟡 Cat D (`13:45`)**, **🔵 Cat C (`13:55`)**, **🟢 Cat B (`14:04`)**, and **🔴 Cat A (`14:11`)** from Start Pen (`0`) to Finish (`100K` or `100M`).
- **Direct Sauce Telemetry + BroadcastChannel Sync:** Works seamlessly alongside `hud.html` or completely standalone via `/pages/src/common.mjs` (`nearby`) and `ws://localhost:1080/api/ws/events`.
- **`A−` / `A+` Text Zoom & Interactive Time-Warp Simulator (`🎛️ Sim`):** Scale font size on the fly or preview any race scenario (`1x`, `15x`, `45x`, plus 6 preset pass buttons) before ride day.

### 2. Side-by-Side `🚂 C&B` Chaser Radar & 4-Stage `🚧 FENCE OFF!` Workflow
1. **`<= 5m 00s` (Heads-Up):** Amber `⚠️ C IN 3m 45s` + Top Leader Warning Bar to announce on Discord/Chat.
2. **`<= 2m 00s` Road Gap / `<= 90s` Catch (Drop Fence!):** Flashing Red/Gold **`🚧 FENCE OFF!`** so you can turn the Fence OFF in Zwift Companion before Zwift's 60s zapper arms.
3. **`+18s` behind to `-28s` ahead (Passing Now):** **`🔓 FENCE OFF`** + `🚀 PASSING NOW!` while the faster group flows through.
4. **`<= -28s` ahead (All Clear):** Logs `✓C` and shows a 25-second Green **`✅ CLEAR AHEAD — Safe to turn Fence back ON`** confirmation.

### 3. Zero-Click Start-Pen Roll-Out & Multi-Lap Circuit Filter (`🔄 5.0K Lp`)
- Automatically resets Ride-Average W/kg (`Auto✓`) as you roll past `0.05 mi` (`80m`).
- Distinguishes genuine **`[SAME LP]`** real passes from **`[+1 LAP]`** lappers and **`[-1L UNLAP]`** pens on multi-lap courses like Watopia 150.

---

## The 9 Live Telemetry Table Columns (Left to Right)

| # | Column | What It Shows |
| :--- | :--- | :--- |
| **1** | **`RIDER`** | Road Rank `#Pos`, `🎯` Center-Lock pin, `LDR` (Beacon Yellow) & `SWP` (Vibrant Red) tags, Category badge, Rider Name, **Full-Height 256-Colour HR Spectrum Bar** on `YOU`, and `5px` HR bars on other riders. |
| **2** | **`WKG`** | Live power-to-weight ratio (`W/kg` to 2 decimal places) colour-coded across `Z1`–`Z7` power zones. |
| **3** | **`HR`** | Live Heart Rate (`bpm`). Flashes bright red in **Zone 5, 6, or 7** (`>= 90%` of Age Max HR). |
| **4** | **`RED 0-120s`** | Cumulative time (`0s` to `120s`) spent in **HR Zone 5–7**, cooling down at `-0.5s/sec` in `Z1`–`Z4`. |
| **5** | **`AGE`** | Rider's Zwift age, used to compute personal Max HR via `round(208 - 0.7 × Age)`. |
| **6** | **`WEIGHT`** | Rider's weight in kilograms (`kg`). |
| **7** | **`DRAFT`** | Live draft savings in Watts (`W`), highlighted in sky blue when drafting. |
| **8** | **`CLIMB %`** | Live road gradient (`%`) colour-coded from sky-blue descents (`<= -1.5%`) to red HC ramps (`8%+`). |
| **9** | **`GAP`** | Time gap (`s`) to you + live velocity arrow (`▲` / `▼` / `•`) + **Amber Draft-Elastic Snap Warning** (`-1.4s` to `-3.2s` ahead). |
