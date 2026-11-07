# Zwift 22.5K Open Race & 209m Climb HUD v7.0 (`RiderFeedHUD_225K_Race`)

**Zwift 22.5K Open Race HUD** is your dedicated Sauce for Zwift racing overlay built for **Open Categorised Zwift Races (`22.5 KM` & `209m` climbing)**, pre-calibrated with your ZwiftPower power curve (**`57.6 kg`**, **`1m: 4.23 W/kg`**, **`5m: 3.40 W/kg`**, **`20m: 2.98 W/kg`**) in a clean 10-column racing layout (with no `LDR` or `SWP` group-ride buttons).

It installs into its own dedicated mod folder (`Documents\SauceMods\RiderFeedHUD_225K_Race`) with its own unique Sauce Window ID (`zwift-225k-race-climb-hud`), running independently alongside your 100K Leader HUD and 40K Recovery HUD.

---

## Key Race Features Built for v7.0

1. **Green-Bordered `POS` Box in the Top Bar (Pinned by Default):**
   - Displays your **Overall Open Road Position** (`POS 7 / 22`), your **Category Rank badge** (`C #5`), and the **Time Gap to the Nearest Category B Wheel Ahead** (`B Wheel: -0.9s`) so you can surf faster Cat B wheels in open multi-category races.
2. **10-Column Race Table with Road Position Badges & Dedicated `CAT` Column:**
   - **Columns:** `Rider | CAT | WKG | HR | RED 0-120s | AGE | Weight | Draft | Climb % | Gap`
   - **Road Position Badges (`1`, `2`, `3`...):** Every rider row displays their live road position number on the left of their name (Gold `#1`, Silver `#2`, Bronze `#3`, and Green-bordered badge on `YOU`).
   - **Dedicated `CAT` Column:** Colour-coded category badges (`A`=Red, `B`=Green, `C`=Blue, `D`=Yellow, `E`=Purple) resolved automatically from Zwift `eventSubgroupId`, athlete profile fields, name tags, or zFTP W/kg fallback.
3. **Option A (`W/kg` Power-Driven) Full-Row Scalable Ribbon + Gentle Red Threshold Pulse:**
   - Your active row (`M. Heady (YOU)`) scales horizontally **all the way across all 10 columns** driven by your live `W/kg` relative to your `20m` (`2.98`), `5m` (`3.40`), and `1m` (`4.23`) targets:
     - **Zone 1 & 2 (`< 2.24 W/kg`):** Vibrant Emerald Green.
     - **Zone 3 & 4 (`2.24` to `2.97 W/kg`):** Warm Golden Amber to Vivid Orange.
     - **Zone 5, 6 & 7 (`>= 2.98 W/kg`):** Crimson Red with a **smooth 2.0-second Gentle Red Threshold Pulse** across all 10 columns.
4. **4 Top Tactical Cards (`1m` / `5m` / `20m` Countdown Tanks + `57.6 kg` Climb Advantage):**
   - **Card 1 (`1m: 4.23 W/kg` / `244W`):** 60-second anaerobic countdown tank (`1:00` -> `0:00`).
   - **Card 2 (`5m: 3.40 W/kg` / `196W`):** 300-second VO2 max countdown tank (`5:00` -> `0:00`).
   - **Card 3 (`20m: 2.98 W/kg` / `172W`):** 1200-second threshold countdown tank (`20:00` -> `0:00`) + `Rst` button.
   - **Card 4 (`0.0/22.5K` & `⛰️ 0/209m`):** Tracks race distance, elevation gain, and your live **wattage savings at `57.6 kg`** vs heavier pack riders on climbs `>= +2.0%`.
