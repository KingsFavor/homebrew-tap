cask "port-killer" do
  version "1.0.2"
  sha256 "bfb4690e33988f6a1cbd091c9806655076f315fc9396861942bc30ab378b4168"

  url "https://github.com/KingsFavor/Mac-port-viewer/releases/download/v#{version}/PortKiller-#{version}.dmg"
  name "Port Killer"
  desc "Menu bar tool to view and kill processes holding developer ports"
  homepage "https://github.com/KingsFavor/Mac-port-viewer"

  app "Port Killer.app"

  zap trash: [
    "~/Library/Preferences/com.portkiller.app.plist",
  ]
end
