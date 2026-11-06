# frozen_string_literal: true

cask "spacepaper" do
  version "1.1.1"
  sha256 "a718834bede36b8ab9883bd1fa3449a52e67554b9ddb5676684c1b41c89dfc18"

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
