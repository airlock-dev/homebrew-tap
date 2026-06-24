cask "airlock-companion" do
  version "0.2.11"
  sha256 "5cd80ffb2a9d511dc9896fceef0a0bc01e4302e0a74fc2798872f1bc8d8bed9b"

  url "https://github.com/airlock-dev/airlock/releases/download/companion-v#{version}/AirlockCompanion.zip",
      verified: "github.com/airlock-dev/airlock/"
  name "Airlock Companion"
  desc "macOS menu bar companion for Airlock HITL approvals"
  homepage "https://airlock.bot"

  depends_on macos: :sonoma

  app "AirlockCompanion.app"

  zap trash: [
    "~/Library/Preferences/bot.airlock.companion.plist",
  ]
end
