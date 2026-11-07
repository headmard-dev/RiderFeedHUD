# WOW 100K Leader & Sweeper Telemetry HUD v16.0 (`RiderFeedHUD_100K_Leader`)

**WOW 100K Leader & Sweeper HUD** is a standalone Sauce for Zwift overlay built specifically for leading, co-leading, and sweeping the **Sunday D WOW 100K Team Time Trial (TTT) Group Ride** (**`2.00 W/kg` front ceiling** and **`37 kph` group blob speed**).

It installs into its own dedicated mod folder (`Documents\SauceMods\RiderFeedHUD_100K_Leader`) with its own unique Sauce Window ID (`wow-100k-leader-telemetry-hud`), so it runs side-by-side with your 40K Recovery HUD and 22.5K Open Race HUD without overwriting any files.

---

## Key Features Built for the WOW 100K Leader HUD

1. **100K Pace, Front Ceiling (`2.00 W/kg`) & Group Speed (`37 kph`) Banners:**
   - **Top-Left (`100K WKG: 2.00`):** Whole-100K Event W/kg Pacer pre-set to **`2.00 W/kg`** (adjustable in `0.05 W/kg` steps via `−` / `+`). Tracks both your live W/kg and your cumulative 100K ride average (`Avg X.XX`), with an instant `Rst` button.
   - **Top-Right (`100K | 2.00 | 37kph`):** Tracks your live 100.0 km distance progress (`XX.X/100K`, `XXK left`) and monitors the front puller of the D group and overall blob speed:
     - **Emerald Green (`FRONT OK` / `GROUP OK`):** Front pace is at or below `2.00 W/kg` and group speed is on target (`~37 kph`).
     - **Flashing Red (`EASE!`):** Alerts immediately if you push above the `2.00 W/kg` ceiling (`> 2.08 W/kg`) on the front.
     - **Amber Warning (`FRONT HOT` / `FAST`):** Warns if another front rider surges above `2.20 W/kg` or if blob speed exceeds `39.0 kph`.
     - **Sky Blue Prompt (`LOW`):** Prompts when blob speed dips more than `1.8 kph` below the `37 kph` target.
2. **Row 2B: Official Zwift Yellow Beacon Leader (`🟡👑 LDR`), Red Sweep (`🧹 SWP`), & Chasing `B/C` Groups Radar:**
   - **Left Radar (`🟡👑 LDR`):** Automatically detects Zwift's Official Yellow Beacon (`eventLeader`) and any Co-Leader pinned via the `LDR` row button or typed into the `Co-Ldr…` box. Highlights Leader and Co-Leader rows in **Beacon Yellow** across the table.
   - **Middle Radar (`🧹 SWP`):** Tracks your Sweep's time gap, closing/opening velocity arrow (`▲` / `▼`), W/kg, and how many riders are within `±3.5s` of the sweep (`+N`). Flashes **Red (`EASE FRONT 0.2w!`)** if the sweep is `>= 10s` back and losing ground. Tagged sweep rows highlight in **Vibrant Red**.
   - **Right Radar (`🚂 B/C`):** Automatically detects chasing Category B and Category C groups approaching from behind (plus a pre-bubble staggered start ETA estimator for `5m` / `10m` / `15m` offsets toward the `~60K` catch point).
3. **2-Second Auto-Closing Top Black Bar & `⚙️` Settings Cogwheel:**
   - Wakes immediately when your mouse moves near the top bar and auto-closes cleanly after **2 seconds** (or click `📌 Top Bar: Pin` inside `⚙️` Settings to lock it open).
   - Includes a live rider `filter` search box, `▶ Demo` mode, `⚙️` Settings drawer (Font Size `10px–24px`, UI Scale, Opacity, `256 Pantone` background chart, `🟦 Screenshot Blue` `#0e66a2` default, `100K` / `40K` presets, Attack W/kg slider, and HR Z5/6/7 Redline slider), `⛶` Full Screen (`F11`), `_` Minimize, and `✕` Exit.
4. **9-Column High-Contrast Telemetry Table (`Rider | WKG | HR | RED 0-120s | AGE | Weight | Draft | Climb % | Gap`):**
   - **Active Rider (`YOU`):** Full-height 256-colour Heart Rate spectrum bar (`55 bpm` Deep Blue -> Age-Computed Max HR Dark Red using $\text{Max HR} = \text{round}(208 - 0.7 \times \text{Age})$).
   - **Other Riders:** 5px age-calibrated 256-colour HR bar underneath each name with a white Zone 5 threshold tick mark.
   - **`RED 0-120s` Redline Timer:** Counts up (`0s` to `120s`) and flashes red **only** when a rider enters Heart Rate Zone 5, 6, or 7 (`>= 90%` of Age Max HR).
   - **Draggable Concertina Columns:** Drag any vertical bar in Row 2 to resize columns or double-click to concertina/collapse.
