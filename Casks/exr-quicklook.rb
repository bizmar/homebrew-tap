cask "exr-quicklook" do
  version "0.3.3"
  sha256 "48d478fbd107325ab3de7a09d01148bc23020302650ba4844b20f76369a38ec5"

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
    "~/Library/Group Containers/group.io.github.bizmar.exr-quicklook",
  ]

  caveats <<~EOS
    EXR Quick Look is not signed or notarised by Apple. Before first use:
      1. Open it from Applications. When macOS refuses, click Done.
      2. System Settings > Privacy & Security > Open Anyway, and confirm.
      3. System Settings > General > Login Items & Extensions: scroll down to
         Extensions (it can be far down), click the (i) at the right of the
         Quick Look row, and check EXR Quick Look Preview and Thumbnail are on.
    Each update needs step 2 again. Details and download verification:
      https://github.com/bizmar/exr-quicklook#install
  EOS
end
