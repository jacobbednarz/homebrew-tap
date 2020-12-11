# app is still in beta so using a custom fork instead of mainstream cask
cask "raycast" do
  version "1.4.0"
  sha256 :no_check

  url "https://api.raycast.app/v2/download", verified: "api.raycast.app"
  name "Raycast"
  desc "Raycast lets you control your tools with a few keystrokes."
  homepage "https://raycast.com"

  app "Raycast.app"
end
