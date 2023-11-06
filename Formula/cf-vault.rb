class CfVault < Formula
  desc "Manage your Cloudflare credentials, securely"
  homepage "https://github.com/jacobbednarz/cf-vault"
  url "https://github.com/jacobbednarz/cf-vault/archive/refs/tags/0.0.16.tar.gz"
  sha256 "d3cb321ff7a52cbdab972610479479ee7b4e90ac93e447994c715fa3604c5c5b"
  license "MIT"

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
