cask "envman" do
  version "0.1.13"
  sha256 "4a9c34ddc24f2ab284767b23ffaf5f0db5602743025ab65dc9afbbb1aba44062"

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
