cask "cf-vault" do
  version "0.0.14"
  sha256 "10cf88b62b0b9bb9a1d902275ac438fd23f4a7bf84ac85280dd877aaad7e60fb"

  url "https://github.com/jacobbednarz/cf-vault/releases/download/0.0.14/cf-vault_0.0.14_darwin_amd64.zip"
  appcast "https://github.com/jacobbednarz/cf-vault/releases.atom"
  name "cf-vault"
  homepage "https://github.com/jacobbednarz/cf-vault"

  binary "cf-vault"
end
