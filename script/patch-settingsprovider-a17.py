#!/usr/bin/env python3
"""Retired SettingsProvider patch entry; keep the stock APK unchanged."""

RETIRED_MESSAGE = "Fake Settings has been removed. Use stock SettingsProvider.apk; patch framework.jar and services.jar only."


def patch(content: str) -> tuple[str, bool]:
    raise ValueError(RETIRED_MESSAGE)


def verify(content: str) -> None:
    raise ValueError(RETIRED_MESSAGE)


if __name__ == "__main__":
    raise SystemExit(RETIRED_MESSAGE)
