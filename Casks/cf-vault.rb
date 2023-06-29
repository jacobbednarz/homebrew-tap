cask "cf-vault" do
  arch arm:   "arm64",
       intel: "amd64"

  version "0.0.15"
  sha256 arm:   "6adadec7de5e0c13b2156ddcf8727724ff845c8c75be218ce1af44ec8129b625",
         intel: "7a49365d338224c3025fbc5f7efb7e920a09c361558de62ba9d6c3a7580052bb"

  url "https://github.com/jacobbednarz/cf-vault/releases/download/#{version}/cf-vault_#{version}_darwin_#{arch}.tar.gz"
  appcast "https://github.com/jacobbednarz/cf-vault/releases.atom"
  name "cf-vault"
  homepage "https://github.com/jacobbednarz/cf-vault"

  binary "cf-vault"
end
