cask "cf-vault" do
  version "0.0.14"
  arch arm: "arm64", 
       intel: "amd64"

  sha256 arm:   "419d9184e4a91b27e5a8330b47ca76bc05ccc6f2e236d06391e4a3b80e68d804",
         intel: "10cf88b62b0b9bb9a1d902275ac438fd23f4a7bf84ac85280dd877aaad7e60fb"
  
  url "https://github.com/jacobbednarz/cf-vault/releases/download/#{version}/cf-vault_#{version}_darwin_#{arch}.tar.gz"
  appcast "https://github.com/jacobbednarz/cf-vault/releases.atom"
  name "cf-vault"
  homepage "https://github.com/jacobbednarz/cf-vault"

  binary "cf-vault"
end
