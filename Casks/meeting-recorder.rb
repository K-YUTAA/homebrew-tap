cask "meeting-recorder" do
  version "1.5.1"
  sha256 "f97405e52b65324c4016fe7cf0743253b39b750b51f46c2c9fba8afd484f58da"

  url "https://github.com/K-YUTAA/homebrew-tap/releases/download/v1.5.1/pairwave-macos.zip"
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
