cask "envman" do
  version "0.1.2"
  sha256 "757692a93287f3a06a3404872f72d1bcde72645c3965499a0288b89391124158"

  url "https://github.com/KingsFavor/EnvMan/releases/download/v#{version}/EnvMan-#{version}.dmg"
  name "EnvMan"
  desc "Local, encrypted environment variable manager for macOS"
  homepage "https://github.com/KingsFavor/EnvMan"

  depends_on macos: :sonoma

  app "EnvMan.app"

  # EnvMan is sandboxed, so its data lives in the app container.
  zap trash: [
    "~/Library/Containers/com.dws.envman",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.dws.envman.sfl2",
  ]
end
