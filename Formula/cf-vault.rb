class CfVault < Formula
  desc "Manage your Cloudflare credentials, securely"
  homepage "https://github.com/jacobbednarz/cf-vault"
  url "https://github.com/jacobbednarz/cf-vault/archive/refs/tags/v0.0.27.tar.gz"
  sha256 "e20adc683ea3f5eb38c920c78f6e1c68d662781b516531663fb44c1af72d5cf9"
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
