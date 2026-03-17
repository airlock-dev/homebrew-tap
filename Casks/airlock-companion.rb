cask "airlock-companion" do
  version "0.1.2"
  sha256 "6b64a23c1ae90a7fe84c15f7016049f432eef1e59131ab8577778cb30f546fbc"

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
