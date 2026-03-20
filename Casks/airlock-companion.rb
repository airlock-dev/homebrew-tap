cask "airlock-companion" do
  version "0.2.0"
  sha256 "711b41f99c54c7e0f06d9c769395fd7e20b0c1434e95e7404caa1e07fe161b78"

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
