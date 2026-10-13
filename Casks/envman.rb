cask "envman" do
  version "0.1.3"
  sha256 "2ce6a79b33fb96621195effb6fd5c58bda41e6a3d188b962135f7f4bba3495c2"

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
