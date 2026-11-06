cask "meeting-recorder" do
  version "1.3.1"
  sha256 "2a181b1e0393017316f4e7e39a95c95456142489c3a2be6030930a81d3d83d80"

  url "https://github.com/K-YUTAA/homebrew-tap/releases/download/v1.3.1/meeting-recorder-macos.zip"
  name "会議録音"
  desc "Menu bar controller for microphone and desktop audio recording with OBS"
  homepage "https://github.com/K-YUTAA/homebrew-tap"

  depends_on cask: "obs"
  depends_on formula: "ffmpeg"
  depends_on macos: :sonoma

  app "会議録音.app"

  caveats <<~EOS
    Open OBS once to complete its initial setup, then quit it before the
    first recording. Grant OBS microphone and system audio recording access
    when macOS asks. The app creates its dedicated OBS recording profile.

    The default audio folder is ~/Music/会議録音. Recordings are retained
    when this cask is uninstalled.

    This release is an ad-hoc-signed trial build and is not notarized.
  EOS
end
