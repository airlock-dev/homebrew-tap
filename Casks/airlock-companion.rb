cask "airlock-companion" do
  version "0.2.12"
  sha256 "90e7a564ff0c3e9e05aed4b81914e98121eaf373893d9a6df44c93dc6536475c"

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
