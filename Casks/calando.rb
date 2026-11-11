cask "calando" do
  version "1.2.0"
  sha256 "df8a6dbcf7f2d58be0621295e1fb564499b0836ca05b5a8a9dc9ff576d1a460e"

  url "https://github.com/rdanieli/calando/releases/download/v#{version}/Calando-#{version}.dmg"
  name "Calando"
  desc "Per app volume control in the menu bar, with automatic ducking"
  homepage "https://github.com/rdanieli/calando"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Calando.app"

  uninstall quit: "io.github.rdanieli.calando"

  zap trash: "~/Library/Preferences/io.github.rdanieli.calando.plist"
end
