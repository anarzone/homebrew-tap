cask "focusguard" do
  version "0.3.9"
  sha256 "970f1524a99c073357cc2cfe76b6c620b41eaf282bfd09c2fc35c83fc566db04"

  url "https://github.com/anarzone/FocusGuard/releases/download/v#{version}/FocusGuard-v#{version}.zip"
  name "FocusGuard"
  desc "Menu-bar focus app: tracks distractions, escalates to full-screen block overlay"
  homepage "https://github.com/anarzone/FocusGuard"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FocusGuard.app"

  zap trash: [
    "~/Library/Application Support/default.store",
    "~/Library/Application Support/default.store-shm",
    "~/Library/Application Support/default.store-wal",
    "~/Library/Preferences/com.anar.focusguard.plist",
  ]
end
