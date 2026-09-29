class CfVault < Formula
  desc "Manage your Cloudflare credentials, securely"
  homepage "https://github.com/jacobbednarz/cf-vault"
  url "https://github.com/jacobbednarz/cf-vault/archive/refs/tags/v0.0.26.tar.gz"
  sha256 "8c48197f4e173bd3a1dbd545f95ff1da9b534c73bece950c04bc93a4ccba8416"
  license "MIT"
  head "https://github.com/jacobbednarz/cf-vault.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build",
      "-gcflags=all=-trimpath=#{buildpath}",
      "-asmflags=all=-trimpath=#{buildpath}",
      "-ldflags", "-X github.com/jacobbednarz/cf-vault/cmd.Rev=#{version}",
      "-o", "cf-vault"
    
    bin.install "cf-vault"
  end

  test do
    system "#{bin}/cf-vault", "version"
  end
end
