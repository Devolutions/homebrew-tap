cask "devolutions-terminal" do
  arch arm: "arm64", intel: "x64"

  version "2026.3.6"
  sha256 arm:   "6ea5ca09860a5122d595933eb3ae0329595a82d701ab144f289d6d7533a59316",
         intel: "90682be2740b67ea4e304976c0cca8e7a90e16232621d704cd6fa497c58018be"

  url "https://github.com/Devolutions/devolutions-terminal/releases/download/v#{version}/devolutions-terminal-#{version}-osx-#{arch}.dmg"
  name "Devolutions Terminal"
  desc "Terminal emulator based on Windows Terminal"
  homepage "https://github.com/Devolutions/devolutions-terminal"

  depends_on macos: :ventura

  app "Devolutions Terminal.app"
end
