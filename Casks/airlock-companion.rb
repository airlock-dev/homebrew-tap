cask "airlock-companion" do
  version "0.2.9"
  sha256 "c21a6a07fa86576a9d7f23157abab4a2e0a954e7bdd065fc1e020a42d05e88de"

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
