# frozen_string_literal: true

cask "spacepaper" do
  version "1.1.0"
  sha256 "01751163e66f702c89a1e76e27dc1d032a19ab8bb8dc5533c30cffc385819103"

  url "https://github.com/K-YUTAA/spacepaper/releases/download/v#{version}/SpacePaper-#{version}-universal.zip"
  name "SpacePaper"
  desc "Assign distinct wallpapers to displays and desktop Spaces"
  homepage "https://github.com/K-YUTAA/spacepaper"

  depends_on macos: :sonoma

  app "SpacePaper.app"
  binary "#{appdir}/SpacePaper.app/Contents/MacOS/SpacePaper", target: "spacepaper"

  uninstall launchctl: "local.kitano.spacepaper",
            quit:      "local.kitano.spacepaper"

  caveats <<~EOS
    Open SpacePaper, choose an image folder from its menu bar icon, and
    enable Start at Login in the app if desired. Newly created Spaces
    receive their wallpaper when first visited.

    Image copies, settings, and wallpaper backups are retained on uninstall.
    This is an ad-hoc-signed trial build and is not notarized.
  EOS
end
