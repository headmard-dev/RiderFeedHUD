# WOW 40K Recovery Leader & Sweeper HUD v1.0 (`RiderFeedHUD_40K_Recovery`)

**WOW 40K Recovery HUD** is your standalone Sauce for Zwift overlay built specifically for leading and sweeping the **D WOW 40K Recovery Ride** (maximum **`2.40 W/kg` on the front**).

It installs into its own dedicated mod folder (`Documents\SauceMods\RiderFeedHUD_40K_Recovery`) with its own unique Sauce Window ID (`wow-40k-recovery-telemetry-hud`), so it runs side-by-side with your 100K Leader HUD and standard Race/TTT HUD without overwriting any files.

---

## Key Features Built for the 40K Recovery HUD

1. **40K Recovery Pace & Distance Banners (`Max 2.40 W/kg` on the Front):**
   - **Top-Left (`40K WKG: 2.40`):** Whole-40K Event W/kg Pacer pre-set to **`2.40 W/kg`** (adjustable in `0.05 W/kg` steps via `−` / `+`). Tracks your live W/kg and cumulative 40K average (`Avg X.XX`).
   - **Top-Right (`40K | 2.40 | 35kph`):** Tracks your 40.0 km progress (`18.5/40K`, `22K left`) and monitors the front of the D group. Stays **Emerald Green (`<=2.4w/kg OK`)** at or below `2.40 W/kg`, and flashes **Red (`EASE!`)** if you exceed `2.40 W/kg` on the front.
2. **2-Second Auto-Closing Top Black Ribbon (`✥ DRAG 2s`):**
   - Wakes immediately when you move or click your mouse on the HUD, stays open while your cursor is inside the top bar, and closes cleanly after **2 seconds** once your cursor leaves or stops moving (or click `📌 Pin` to lock it open).
3. **Windows-Style Full Screen, Paged View, Minimize & Exit Controls:**
   - **`📄 Paged` (`Page 1/2`):** Switches the rider table into clean pages (`6`, `8`, or `10` riders per page) with larger row spacing, **`◀ Prev`** / **`Next ▶`** buttons (or `PageUp`/`PageDown` keys), and an optional **`⟳ Auto-Flip (6s)`** toggle that automatically alternates between Page 1 (Front & Main Pack) and Page 2 (Tail, Sweeps & Chasers).
   - **`⛶ Full` (`❐ Restore` / `F11`):** Expands the HUD to full screen on your active monitor and restores your exact previous window size and position when clicked again.
   - **`—` (Minimize / Roll-Up):** Collapses the rider table so only the compact top 40K banners remain on screen.
   - **`✕ Exit`:** Closes the Sauce HUD overlay window cleanly.
4. **Upgraded High-Contrast Telemetry Fonts Across All Fields:**
   - Uses a crisp sports UI typeface (`Bahnschrift` / `Inter` / `Segoe UI Variable Display`) for rider names and headers, paired with a tabular monospace font (`JetBrains Mono` / `Cascadia Mono` / `Consolas` with `tnum` & `zero` OpenType features) across all numeric fields (`WKG`, `HR`, `RED 0-120s`, `AGE`, `Weight`, `Draft`, `Climb %`, `Gap`, and banners) so digits never jitter horizontally.
5. **Official Zwift Yellow Beacon Leader (`🟡👑 LDR`) & Orange Sweep (`🧹 SWP`) Tracking:**
   - Automatically highlights Zwift's Official Yellow Beacon Leader & Co-Leaders in **Beacon Yellow** and Sweeps in **vibrant Orange**.
