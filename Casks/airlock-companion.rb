cask "airlock-companion" do
  version "0.2.7"
  sha256 "2d0ca22b7e2be9c7460c6af6c1a2951673d348545b60dff7cc28199dc12e40f7"

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
