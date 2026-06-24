cask "airlock-companion" do
  version "0.2.10"
  sha256 "cbc7429b8fcf1c0a11d82d72338fba0427e3785958d4eac05190f95803bab870"

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
