cask "unigetui" do
  arch arm: "arm64", intel: "x64"

  version "2026.3.4"
  sha256 arm:   "0b4873efbf9e2b302638a0eeaddaf3f8f827285a9b6760cc6ec4178bab923fdb",
         intel: "a4e277c8d8ec5debf064043b5716e5048f2c1b9c904a25cde120ccb566d82f75"

  url "https://cdn.devolutions.net/download/Devolutions.UniGetUI.macos-#{arch}.#{version}.0.dmg"
  name "UniGetUI"
  desc "Graphical interface for package managers"
  homepage "https://devolutions.net/unigetui/"

  depends_on macos: :monterey

  app "UniGetUI.app"
end
