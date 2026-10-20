cask "focusguard" do
  version "0.3.13"
  sha256 "dc51f62bcd0b0b838bea06799802fe7aad28f891fbddf2f0e8a0c817f345667b"

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
