cask "cf-vault" do
  arch arm:   "arm64",
       intel: "amd64"

  version "0.0.16"
  sha256 arm:   "d3b4b5a8dbd514cfb226342fda74e4d59bd3b69505bee1103d5602375e651851",
         intel: "088b61673eb761baf7b6378b01eecb8f09a0a2bc69f2c2fd23ede13ec0e7072b"

  url "https://github.com/jacobbednarz/cf-vault/releases/download/#{version}/cf-vault_#{version}_darwin_#{arch}.tar.gz"
  name "cf-vault"
  homepage "https://github.com/jacobbednarz/cf-vault"

  livecheck do
    url "https://github.com/jacobbednarz/cf-vault/releases.atom"
  end

  binary "cf-vault"
end
