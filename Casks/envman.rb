cask "envman" do
  version "0.1.5"
  sha256 "f39517b95cafc6a3c940d97eb064704f1ef7960b1d70edc30386a269542fb11b"

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
