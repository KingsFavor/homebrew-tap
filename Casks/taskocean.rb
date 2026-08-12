cask "taskocean" do
  version "0.1.0"
  sha256 "aed678608e6aba49a0774837cf9174847c2ac93922894146d3042cb597dc70e0"

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
