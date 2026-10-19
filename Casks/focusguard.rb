cask "focusguard" do
  version "0.3.12"
  sha256 "e7d8b4fd4ad8b51b4ccaf271130bc3ca829830146a78ad2706f236c655cb43ee"

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
