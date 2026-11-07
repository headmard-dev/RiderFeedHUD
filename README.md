# RiderFeedHUD — Sauce for Zwift Telemetry Suite (`100K Leader`, `22.5K Race`, & `40K Recovery`)

This repository contains the complete **RiderFeedHUD** suite of Sauce for Zwift overlays calibrated for **Mark Heady** (`57.6 kg`, Age `68`, Category `C`, `1m: 4.23 W/kg`, `5m: 3.40 W/kg`, `20m: 2.98 W/kg`) along with universal auto-detection for any Zwift athlete.

---

## Included Standalone Sauce Mod Folders

| Subfolder / Mod Package | Sauce Window ID | Purpose & Pacing Calibration |
| :--- | :--- | :--- |
| **`RiderFeedHUD_100K_Leader/`** | `wow-100k-leader-telemetry-hud` | **D WOW 100K TTT Leader & Sweeper HUD:** `100K` distance, **`2.00 W/kg` front ceiling**, **`37 kph` group speed**, `🟡👑 LDR` Beacon Yellow Leader rows, `🧹 SWP` Red Sweep rows, and `🚂 B/C` Chasing Groups Radar. |
| **`RiderFeedHUD_225K_Race/`** | `zwift-225k-race-climb-hud` | **Zwift 22.5K Open Race & 209m Climb HUD:** Top-Bar Green **`POS` Box** (`POS X / Total | C #Rank | B Wheel`), Road Position badges (`1, 2, 3...`), **10-column table with `CAT` column**, `1m` (`4.23`), `5m` (`3.40`), `20m` (`2.98`) countdown tanks, `57.6 kg` climb wattage advantage, and Full-Row `Green -> Orange -> Red` power ribbon. |
| **`RiderFeedHUD_40K_Recovery/`** | `wow-40k-recovery-telemetry-hud` | **D WOW 40K Recovery Leader & Sweeper HUD:** `40K` distance, **`Max 2.40 W/kg` front ceiling**, **`35 kph` group speed**, 2-second auto-closing top black bar, Light Blue `#0e66a2` Screenshot theme, `LDR` Yellow rows, and `SWP` Red rows. |

Each subfolder contains its own dedicated `manifest.json`, `pages/hud.html`, `README.md`, and `HELP.md`.
