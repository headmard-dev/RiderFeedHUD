# WOW 40K Recovery Leader & Sweeper HUD v16.0 (`RiderFeedHUD_40K_Recovery`)

**WOW 40K Recovery HUD** is your standalone Sauce for Zwift overlay built specifically for leading and sweeping the **D WOW 40K Recovery Ride** (**maximum `2.40 W/kg` on the front** and **`35 kph` group speed**).

It installs into its own dedicated mod folder (`Documents\SauceMods\RiderFeedHUD_40K_Recovery`) with its own unique Sauce Window ID (`wow-40k-recovery-telemetry-hud`), so it runs side-by-side with your 100K Leader HUD and 22.5K Open Race HUD without overwriting any files.

---

## Key Features Built for the 40K Recovery HUD

1. **40K Recovery Pace (`Max 2.40 W/kg` on the Front) & Distance (`40.0 km`) Banners:**
   - **Top-Left (`40K WKG: 2.40`):** Whole-40K Event W/kg Pacer pre-set to **`2.40 W/kg`** (adjustable in `0.05 W/kg` steps via `−` / `+`). Tracks your live W/kg and cumulative 40K ride average (`Avg X.XX`).
   - **Top-Right (`40K | 2.40 | 35kph`):** Tracks your 40.0 km progress (`18.5/40K`, `22K left`) and monitors the front of the D group. Stays **Emerald Green (`<=2.4w/kg OK`)** at or below `2.40 W/kg`, and flashes **Red (`EASE!`)** if you exceed `2.40 W/kg` (`> 2.48 W/kg`) on the front.
2. **Row 2B: Official Zwift Yellow Beacon Leader (`🟡👑 LDR`), Red Sweep (`🧹 SWP`), & Chasing `B/C` Radar:**
   - Automatically highlights Zwift's Official Yellow Beacon Leader & Co-Leaders in **Beacon Yellow** (`LDR`) and Sweeps in **Vibrant Red** (`SWP`), with live sweep gap tracking and regroup warnings (`EASE FRONT 0.2w!` when the sweep is `>= 10s` back and dropping).
3. **2-Second Auto-Closing Top Black Bar & `⚙️` Settings Cogwheel:**
   - Wakes immediately when you move or click your mouse near the top of the HUD, stays open while your cursor is inside the top bar, and closes cleanly after **2 seconds** once your cursor leaves (or click `📌 Top Bar: Pin` inside `⚙️` Settings to lock it open).
   - Includes a live rider `filter` box, `▶ Demo` mode, `⚙️` Settings drawer (Font Size, UI Scale, Opacity, `256 Pantone` chart, `🟦 Screenshot Blue` `#0e66a2` default, `40K` / `100K` presets, and Paged View toggle), `⛶` Full Screen (`F11`), `_` Minimize, and `✕` Exit.
4. **9-Column High-Contrast Telemetry Table (`Rider | WKG | HR | RED 0-120s | AGE | Weight | Draft | Climb % | Gap`):**
   - Full-height 256-colour HR spectrum bar on your row (`55 bpm` -> Age-Computed Max HR), 5px age-calibrated HR bars on all other riders, `RED 0-120s` Zone 5/6/7 timer, and draggable concertina column dividers.
