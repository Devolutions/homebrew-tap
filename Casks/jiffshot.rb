cask "jiffshot" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "485ae28ee93eea80b188b42d8f66c952926abea31a8db61d166f6994750adb7b",
         intel: "f8e0a564f36f6584a584b32a80667ad50cb4d45dc661f842e58d7c45eb30ca44"

  url "https://github.com/Devolutions/jiffshot/releases/download/v#{version}/Devolutions.Jiffshot-macos-#{arch}-#{version}.dmg"
  name "Jiffshot"
  desc "Screenshot, screen recording and annotation tool"
  homepage "https://github.com/Devolutions/jiffshot"

  depends_on macos: :ventura

  app "Jiffshot.app"
end
