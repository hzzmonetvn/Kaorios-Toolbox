# PIF device presets

The daily default is Pixel 7 Pro (cheetah). The selectable catalog contains only Pixel 7 Pro, Pixel 7, Pixel 7a and Pixel 6a. Pixel 6/6 Pro, Pixel Fold, Pixel Tablet and Pixel 8 or newer are not published.

The daily updater reads the `bot` branch of [KOWX712/PlayIntegrityFix](https://github.com/KOWX712/PlayIntegrityFix), pins a single HEAD commit for all downloads, validates its device list and the four matching property records, and then updates both JSON files. It records only normalized device facts, not upstream scripts. The upstream repository advertises [GPL-3.0](https://github.com/KOWX712/PlayIntegrityFix/blob/inject_s/LICENSE); the bot branch itself has no separate license file. The current source snapshot is [`08592e9d4488813a182e51470220811e643e59c1`](https://github.com/KOWX712/PlayIntegrityFix/tree/08592e9d4488813a182e51470220811e643e59c1). Check the upstream commit history for subsequent scheduled updates.

These upstream records have `_beta` product names and CANARY fingerprints. They are not stable OTA records, and their publication does not guarantee a Play Integrity verdict. If the source is unavailable or fails validation, neither JSON is intentionally updated. The app's Play Integrity screen includes a device fingerprint picker; applying a preset turns off automatic PIF updates so a later refresh will not replace the manual choice.
