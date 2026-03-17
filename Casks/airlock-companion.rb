cask "airlock-companion" do
  version "0.1.4"
  sha256 "af5e58b0215f327f3c77daade9d6eecb585dc622c9f95aebc4695386b8f25853"

  url "https://github.com/airlock-dev/airlock/releases/download/companion-v#{version}/AirlockCompanion.zip"
  name "Airlock Companion"
  desc "macOS menu bar companion for Airlock HITL approvals"
  homepage "https://airlock.bot"

  depends_on macos: ">= :sonoma"

  app "AirlockCompanion.app"

  zap trash: [
    "~/Library/Preferences/bot.airlock.companion.plist",
  ]
end
