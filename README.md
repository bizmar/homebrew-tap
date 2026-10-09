# bizmar/tap

Homebrew tap for [EXR Quick Look](https://github.com/bizmar/exr-quicklook):
Finder thumbnails and Quick Look previews for modern OpenEXR files.

```bash
brew install --cask bizmar/tap/exr-quicklook
```

Updates arrive with `brew upgrade`.

**The app is not signed or notarised by Apple**, so Homebrew's main catalogue
can't carry it, and macOS blocks it the first time. After installing, and
after each update:

1. Open **EXR Quick Look** from Applications. When macOS refuses, click
   **Done**.
2. **System Settings → Privacy & Security → Open Anyway**, and confirm.

Once, after the first install:

3. **System Settings → General → Login Items & Extensions**. Scroll down to
   the **Extensions** section (it can be a long way down), click the **ⓘ**
   button at the right-hand end of the **Quick Look** row, and check that
   **EXR Quick Look Preview** and **EXR Quick Look Thumbnail** are switched
   on. They may already be.

This cask downloads the same DMG as the
[GitHub release](https://github.com/bizmar/exr-quicklook/releases/latest),
checked against its SHA-256. The DMG is built and attested by the project's
CI; to verify it yourself, see
[Check the download](https://github.com/bizmar/exr-quicklook#check-the-download-optional-recommended-for-an-unsigned-app).

Uninstall: `brew uninstall --cask exr-quicklook` (add `--zap` to remove its
settings folders too). There is nothing to switch off first.

Issues belong in the [main repository](https://github.com/bizmar/exr-quicklook/issues).
