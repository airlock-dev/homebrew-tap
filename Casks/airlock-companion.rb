cask "airlock-companion" do
  version "0.2.13"
  sha256 "f9ddd67e2ff2e2b1c906f28a635836e50353b9d9577383d317b7dd8db35f71bd"

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
