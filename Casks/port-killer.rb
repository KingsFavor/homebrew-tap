cask "port-killer" do
  version "1.1.0"
  sha256 "d12adfa338076d54c1bf1c35a56f6a5aa603341501cb6c099808513c1e2e1007"

  url "https://github.com/KingsFavor/Mac-port-viewer/releases/download/v#{version}/PortKiller-#{version}.dmg"
  name "Port Killer"
  desc "Menu bar tool to view and kill processes holding developer ports"
  homepage "https://github.com/KingsFavor/Mac-port-viewer"

  app "Port Killer.app"

  zap trash: [
    "~/Library/Preferences/com.portkiller.app.plist",
  ]
end
