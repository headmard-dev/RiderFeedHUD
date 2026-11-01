# RiderFeedHUD v12 — User Manual, Controls & Race Tactics Guide

This guide explains every control, gauge, colour indicator, and race tactic built into **RiderFeedHUD v12** for **Sauce for Zwift**.

---

## 1. Top Hover Toolbar Controls (Row 1)

Move your mouse over the HUD to reveal the top control bar (it fades out automatically when your cursor leaves the window):

* **Live Status & Climb/Draft/Elastic Advisor Pill (Left):**
  - Shows connection status (`Live (N)` or `Demo`) and a real-time tactical coaching pill (`Z4 SAFE`, `RAMP AHEAD`, `ELASTIC SLIPPING`, `HIGH Z4 - SURF WHEEL`, or `IN RED Z5/Z6/Z7 - EASE 10-15W!`).
* **`Atk` Slider (`3.5` to `6.5 W/kg`, Default `4.5 W/kg`):**
  - Sets the W/kg threshold that triggers the **Orange Full-Row Attack Alert** across any rider's row.
* **`Z5/6/7` Slider (`85%` to `96%`, Default `90%`):**
  - Sets the percentage of each rider's Age-Computed Max HR where **Heart Rate Zone 5/6/7 Redline** begins. At the default `90%`, riders working hard in Zone 4 (`80%–89%`) do not flash red; only riders pushing into Zone 5 (`90%–93%`), Zone 6 (`94%–97%`), or Zone 7 (`>=98%`) trigger the `RED 0-120s` counter and flashing alert.
* **`Opacity` Slider (`5%` to `95%`, Default `55%`):**
  - Scales the transparency of the HUD background while keeping all text and badges at 100% crisp visibility.
* **`Scale` Slider (`0.8x` to `1.4x`, Default `1.0x`):**
  - Dynamically scales the font and row size of the entire HUD.
* **`Compact Cols` & `Reset Cols` Buttons:**
  - `Compact Cols` concertinas all 9 columns tightly together to minimize screen footprint; `Reset Cols` restores default column widths.
* **`Pantone BG` Button (256 Pantone Coated Colour Chart):**
  - Opens an interactive 16x16 grid of **256 Pantone Coated (PMS)** background swatches across 16 colour families. Click any swatch to set your background tone (saved automatically across restarts), or click `Default Dark` (`PMS 296 C • Midnight Navy`).
* **`Reset 120s` Button:**
  - Resets all riders' `RED 0-120s` timers, gap velocity trackers, and attack baselines to zero.
* **`Demo` Button:**
  - Launches a built-in simulated pack feed showcasing Orange Attack Rows, Zone 5/6/7 redline flashes, opening/closing gaps, elastic snap alerts, and your `5m FTP` / `1m TTT` gauges.

---

## 2. Personal Tactical Bar (`5m FTP` & `1m WTRL TTT Pull Pacer`)

Directly below the top toolbar sits your two-panel **Personal Tactical Bar**:

### Left Panel: `5m FTP` (`3.40 W/kg` Threshold & `5:00` Countdown Tank)
* **Purpose:** Protects you from blowing up during sustained climbs or bridge efforts at your 5-minute FTP ceiling (`3.40 W/kg` default).
* **Adjusting Your Target:** Click **`−`** or **`+`** to adjust your 5-minute threshold in `0.05 W/kg` increments (saved automatically). Click **`Rst`** at any time to refill the tank to `5:00` (`300s`).
* **How It Works Live:**
  - **Below `3.40 W/kg` (`SAFE` — Green):** Your tank recharges smoothly at `+0.5s` per second up to `5:00`.
  - **At or Above `3.40 W/kg` (`ON 5m` — Orange):** The bar turns orange and counts down from `5:00` toward `0:00`. If you surge well above `3.40 W/kg` (e.g., `4.00 W/kg`), the countdown drains proportionally faster to reflect deeper anaerobic burn.
  - **Under `1:00` Left (`BLOW-UP!` — Flashing Red):** Warns you that you have less than 60 seconds left at `3.40+ W/kg` and need to get back on a wheel immediately.

### Right Panel: `1m TTT` (WTRL TTT 60-Second Pull Pacer)
* **Purpose:** Keeps your 1-minute front pulls smooth, accurate, and timed to the second during a **WTRL Team Time Trial (TTT)**.
* **Setting the Leader's Call:** When your TTT captain calls a pull pace (e.g., *"Pull at 3.40 W/kg"* or *"3.60 W/kg on the front"*), click **`−`** or **`+`** to set that exact target W/kg.
* **Auto-Start & Manual `Pull` / `Rst` Button:**
  - **Automatic Trigger:** As soon as your power comes within `-0.12 W/kg` of the target, the `60s` countdown starts automatically. When your turn finishes and you drop back into the draft (`>0.25 W/kg` below target for 5 seconds), it automatically resets to `60s` (`IN DRAFT`) ready for your next turn!
  - **Manual Trigger:** You can also click **`Pull`** (`Rst`) at any time to start or reset the 60-second clock manually.
* **Live Pacing Colours During Your Pull:**
  - **Green (`PULL OK`):** You are holding within `±0.15 W/kg` of the captain's call.
  - **Blue (`PUSH +X.XX`):** You are under the target W/kg.
  - **Flashing Red (`EASE -X.XX`):** You are pushing more than `+0.20 W/kg` over the target—warning you to ease slightly so you don't gap your own teammates sitting in your draft!
  - **Purple/Gold (`DONE! DROP BACK` at `0s`):** Your 60-second pull is complete; ease off 0.5 W/kg and slot onto the back of the paceline.

---

## 3. Row 2 Concertina / Column Resizer Bars

* **White Bold Headers:** Row 2 displays high-contrast white bold headers (`Rider | WKG | HR | RED 0-120s | AGE | WEIGHT | DRAFT | Climb % | Gap`).
* **Drag to Resize:** Grab any vertical splitter bar on the right edge of a column header (or on the first two rider rows) and drag left or right to widen or concertina that column down to `18px`.
* **Double-Click to Toggle:** Double-click any vertical splitter bar to snap that column between its compact width and default width.

---

## 4. Age-Calibrated 256-Colour HR Spectrum & Zone 5/6/7 Redline

Every rider's Maximum Heart Rate is computed automatically from their **AGE** column using the cycling Tanaka formula:

$$\text{Max HR} = \text{round}(208 - 0.7 \times \text{Age})$$

* **Example (Age 68):** $\text{Max HR} = \text{round}(208 - 47.6) = 160\text{ bpm}$.
  - **Zone 4 (Race Threshold, 80%–89%):** `128–143 bpm` -> Normal race effort (no red flash).
  - **Zone 5 (VO2 Max Redline, 90%–93%):** `144–149 bpm` -> Flashes Red (`Z5 XXs`).
  - **Zone 6 (Anaerobic Redline, 94%–97%):** `150–156 bpm` -> Flashes Red (`Z6 XXs`).
  - **Zone 7 (Max Effort, >=98%):** `157–160+ bpm` -> Flashes Red (`Z7 XXs`).
* **Your Row (`YOU`):** Displays a **Full-Height, Full-Width 256-Colour Spectrum Bar** behind your name that sweeps from **Deep Blue (`55 BPM`)** -> **Cyan** -> **Emerald Green** -> **Warm Yellow** -> **Orange-Red** -> **Dark Crimson Red (`Max HR`)**.
* **All Other Riders:** Display a `5px` 256-colour HR spectrum bar underneath their name, calibrated to *their* age-computed Max HR, with a white tick mark at their **90% Zone 5/6/7 Redline threshold**.

---

## 5. Tactical Race Guide: Using Attacks, Climb %, and Gap Elastic Arrows

1. **Spotting Attacks Instantly (Orange Row with Black Font):**
   - Because heart rate takes 15+ seconds to react to a sprint or attack, watch for any row turning **solid Orange (`ATK`)**. If the rider is just ahead of you (`-0.5s` to `-2.0s`) and their `Gap` arrow shows `▼` (opening), react within 2 seconds to jump into their draft before the elastic snaps.
2. **Surfing Wheels on Climbs (`Climb %` + Top Pacing Pill):**
   - Watch the `Climb %` column of riders `1s` to `3s` ahead of you. When their gradient turns orange (`+5.0%+`) or red (`+8.0%+`), the top pill warns **`RAMP AHEAD +X.X% - SHIFT & HOLD Z4`** 2–3 seconds before the gradient hits your smart trainer.
   - If a rival ahead is flashing red (`Z5`/`Z6`/`Z7` in `RED 0-120s`) on a steep climb, let them cook—hold your power below `3.40 W/kg` (`5m FTP` gauge) and your HR below `Z5` so you can reel them back in as they blow up.
3. **Preventing Draft Elastic Snaps (`Gap` Column Arrows & Amber Flash):**
   - **Ahead of You (`-Gap`):** Green `▲` = you are closing the gap; Amber `▼` = the rider ahead is pulling away.
   - **Behind You (`+Gap`):** Yellow `▲` = chasers are closing on you; Sky Blue `▼` = you are dropping the riders behind.
   - **Flashing Amber Cell (`-1.3s` to `-3.3s` Ahead & Opening `▼`):** In Zwift, the draft elastic snaps at `~2.5–3.0s`. When a `Gap` cell flashes Amber, apply a quick 2–3 second micro-surge to close back inside `-1.0s` before losing the draft!
