cask "taskocean" do
  version "0.1.1"
  sha256 "cfe4cdcac7921a04897216fe61b5954515fd5a7f91e5e8b0442294b2474e0f61"

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
