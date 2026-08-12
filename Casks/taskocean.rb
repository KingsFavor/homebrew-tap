cask "taskocean" do
  version "0.1.4"
  sha256 "e1d6790671f1be3fb6521dbb5550adaee07cb3b0bad3bf66997c579c3ddf385e"

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
