#!/usr/bin/env python3
"""Compatibility launcher for the old Android-17-specific filename.

The maintained entry point is kaorios_patcher.py and supports Android 13-17.
This wrapper is retained so old commands do not break.
"""
from pathlib import Path
import runpy

runpy.run_path(str(Path(__file__).with_name("kaorios_patcher.py")), run_name="__main__")
