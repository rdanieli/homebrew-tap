cask "fader" do
  version "1.1.0"
  sha256 "82952097697528802980dd4427d9ff03678a18fd85ccf5b7e746f6b62091aac8"

  url "https://github.com/rdanieli/fader/releases/download/v#{version}/Fader-#{version}.dmg"
  name "Fader"
  desc "Per app volume control in the menu bar, with automatic ducking"
  homepage "https://github.com/rdanieli/fader"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Fader.app"

  uninstall quit: "com.local.fader"

  zap trash: "~/Library/Preferences/com.local.fader.plist"
end
