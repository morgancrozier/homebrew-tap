cask "menugap" do
  version "1.0.0"
  sha256 "831f478ecb5c540f91a7b58f444b8b86d3a7b60d724e9767b5ad10a32832e5b1"

  url "https://github.com/morgancrozier/menu-gap/releases/download/v#{version}/MenuGap-#{version}.zip"
  name "MenuGap"
  desc "Adjust menu bar item spacing"
  homepage "https://github.com/morgancrozier/menu-gap"

  depends_on macos: :tahoe

  app "MenuGap.app"

  caveats <<~EOS
    MenuGap requires macOS 26.5 or later.

    The downloadable build is unsigned and not notarized. If macOS blocks
    MenuGap on first launch, try opening it once, then go to:

      System Settings → Privacy & Security → Open Anyway

    See the MenuGap README for details.
  EOS
end
