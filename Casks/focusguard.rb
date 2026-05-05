cask "focusguard" do
  version "0.2.6"
  sha256 "b4f7abf0ee89c88be8bf43cedf12ae38b30aff1b574834f0523c938e880d18d9"

  url "https://github.com/anarzone/FocusGuard/releases/download/v#{version}/FocusGuard-v#{version}.zip"
  name "FocusGuard"
  desc "Menu-bar focus app: tracks distractions, escalates to full-screen block overlay"
  homepage "https://github.com/anarzone/FocusGuard"

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
