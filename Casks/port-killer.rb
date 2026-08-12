cask "port-killer" do
  version "1.2.3"
  sha256 "09c6ce99b76661079ec949cc2f5dc7b3deec91f46413b244439793df960d9485"

  url "https://github.com/KingsFavor/Mac-port-viewer/releases/download/v#{version}/PortKiller-#{version}.dmg"
  name "Port Killer"
  desc "Menu bar tool to view and kill processes holding developer ports"
  homepage "https://github.com/KingsFavor/Mac-port-viewer"

  app "Port Killer.app"

  zap trash: [
    "~/Library/Preferences/com.portkiller.app.plist",
  ]
end
