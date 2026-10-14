cask "envman" do
  version "0.1.11"
  sha256 "4feb1bfcd2c63e0a4f90e018100fc369d27088760dc90bd1e0852fb19c390c34"

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
