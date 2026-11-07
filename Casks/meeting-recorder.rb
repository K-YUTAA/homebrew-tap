cask "meeting-recorder" do
  version "1.5.4"
  sha256 "78bbb0aac72b84fa25dd6acd4d3ca27dc5c0c677734bb0e4a462ed5958b2175c"

  url "https://github.com/K-YUTAA/homebrew-tap/releases/download/v1.5.4/pairwave-macos.zip"
  name "Pairwave"
  desc "Menu bar controller for microphone and desktop audio recording with OBS"
  homepage "https://github.com/K-YUTAA/homebrew-tap"

  depends_on cask: "obs"
  depends_on formula: "ffmpeg"
  depends_on macos: :sonoma

  app "Pairwave.app"

  caveats <<~EOS
    Open OBS once to complete its initial setup, then quit it before the
    first recording. Grant OBS microphone and system audio recording access
    when macOS asks. The app creates its dedicated OBS recording profile.

    The default audio folder is ~/Music/Pairwave. Recordings are retained
    when this cask is uninstalled.

    This release is an ad-hoc-signed trial build and is not notarized.
  EOS
end
