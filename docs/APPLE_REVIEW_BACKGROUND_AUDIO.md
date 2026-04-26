# Apple App Review — Reply for Background Audio (UIBackgroundModes: audio)

Use the text below when replying to Apple about **"The app declares support for audio in the UIBackgroundModes key but we are unable to locate any features that require persistent audio."**

---

## Suggested reply (copy/paste or adapt)

**Subject:** Clarification regarding UIBackgroundModes – audio

Our app provides a **Sound Library** feature through which users listen to religious and Quranic audio content. This feature requires **background audio** so that:

1. **Playback continues** when the user leaves the app (e.g. switches to another app, locks the device, or minimizes the app).
2. **System media controls** are available (Control Center, Lock screen, and external media controls) so users can play, pause, and seek without reopening the app.

The `audio` entitlement in `UIBackgroundModes` is used by our audio playback implementation (Sound Library) to keep playback active in the background and to display the now-playing notification with controls.

**How to verify:**

1. Open the app and go to **مكتبة الأصوات** (Sound Library).
2. Select any category and **start playing** an audio item.
3. Send the app to the background (e.g. press Home or switch to another app), or lock the device.
4. You should see that playback continues and that **media controls** appear in Control Center / Lock screen.

We use the `audio_service` package with a custom `SoundLibraryAudioHandler` to provide this behavior. The background audio mode is therefore required for the intended user experience of our Sound Library feature.

Thank you for your review.

---

## Optional: Reviewer notes (for future submissions)

If you can add **App Review Notes** in App Store Connect, you can add a short note so reviewers know where to look:

- **"Background audio:** To test background audio, open **مكتبة الأصوات** (Sound Library), play any audio, then leave the app or lock the device. Playback continues and controls appear in Control Center / Lock screen."

---

## Technical reference (for your team)

- **Dart:** `lib/features/sound_library/data/services/audio_handler_service.dart` — `SoundLibraryAudioHandler` (extends `BaseAudioHandler` from `audio_service`).
- **iOS:** `ios/Runner/Info.plist` — `UIBackgroundModes` → `audio`.
- **Android:** `AndroidManifest.xml` — `FOREGROUND_SERVICE` + `foregroundServiceType="mediaPlayback"` for the same feature.
