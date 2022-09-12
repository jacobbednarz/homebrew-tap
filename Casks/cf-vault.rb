cask "cf-vault" do
  version "0.0.13"
  sha256 "9e8fa7254f1234685dba4077ede099bac31d604df7cc8c20c0e4231383ec8c77"

  url "https://github.com/jacobbednarz/cf-vault/releases/download/0.0.13/cf-vault_0.0.13_darwin_amd64.zip"
  appcast "https://github.com/jacobbednarz/cf-vault/releases.atom"
  name "cf-vault"
  homepage "https://github.com/jacobbednarz/cf-vault"

  binary "cf-vault"
end
