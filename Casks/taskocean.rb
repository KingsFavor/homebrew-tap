cask "taskocean" do
  version "0.1.6"
  sha256 "233f9b11600cd0163f85dbac0b768aee964091f452bf6090e02cea8998740a25"

  url "https://github.com/KingsFavor/Taskocean/releases/download/v#{version}/TaskOcean-#{version}.dmg",
      verified: "github.com/KingsFavor/Taskocean/"
  name "TaskOcean"
  desc "Always-on-top Google Tasks utility for macOS"
  homepage "https://github.com/KingsFavor/Taskocean"

  depends_on macos: ">= :sonoma"

  app "TaskOcean.app"

  zap trash: [
    "~/Library/Application Support/com.dws.taskocean",
    "~/Library/Caches/com.dws.taskocean",
    "~/Library/HTTPStorages/com.dws.taskocean",
    "~/Library/Preferences/com.dws.taskocean.plist",
  ]
end
