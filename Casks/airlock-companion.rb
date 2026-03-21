cask "airlock-companion" do
  version "0.2.5"
  sha256 "cb6ec575eccd371b6c77f8185198826428a0d28ab8abeda13c1ec96d7cc0a33f"

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
