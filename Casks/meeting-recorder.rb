cask "meeting-recorder" do
  version "1.5.3"
  sha256 "31081c738f8d3fd99992677d775f43252fec7d0ad7aa866d5da5116039184478"

  url "https://github.com/K-YUTAA/homebrew-tap/releases/download/v1.5.3/pairwave-macos.zip"
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
