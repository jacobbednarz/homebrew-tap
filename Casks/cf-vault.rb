cask "cf-vault" do
  version "0.0.12"
  sha256 "ed38835493086761d6a8b05702c00d38e6ce16cf19cd79379ff072ab50197cfa"

  url "https://github.com/jacobbednarz/cf-vault/releases/download/0.0.12/cf-vault_0.0.12_darwin_amd64.zip"
  appcast "https://github.com/jacobbednarz/cf-vault/releases.atom"
  name "cf-vault"
  homepage "https://github.com/jacobbednarz/cf-vault"

  binary "cf-vault"
end
