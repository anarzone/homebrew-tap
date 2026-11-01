cask "focusguard" do
  version "0.3.35"
  sha256 "bb6c30e732b4a3a675d21cef721d5c87e79561b247e167d5201d249e7f5af15c"

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
