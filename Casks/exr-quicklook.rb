cask "exr-quicklook" do
  version "0.3.2"
  sha256 "5cc8fa70e3003608e6fa19e72a16d2060e690092442b333b457cbf24ba1d40a7"

  url "https://github.com/bizmar/exr-quicklook/releases/download/v#{version}/EXR-Quick-Look-#{version}.dmg"
  name "EXR Quick Look"
  desc "Finder thumbnails and Quick Look previews for OpenEXR files"
  homepage "https://github.com/bizmar/exr-quicklook"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "EXR Quick Look.app"

  zap trash: [
    "~/Library/Containers/io.github.bizmar.exr-quicklook",
    "~/Library/Containers/io.github.bizmar.exr-quicklook.Preview",
    "~/Library/Containers/io.github.bizmar.exr-quicklook.Thumbnail",
  ]

  caveats <<~EOS
    EXR Quick Look is not signed or notarised by Apple. Before first use:
      1. Open it from Applications. When macOS refuses, click Done.
      2. System Settings > Privacy & Security > Open Anyway, and confirm.
      3. System Settings > General > Login Items & Extensions > Quick Look:
         switch on EXR Quick Look Preview and EXR Quick Look Thumbnail.
    Each update needs step 2 again. Details and download verification:
      https://github.com/bizmar/exr-quicklook#install
  EOS
end
