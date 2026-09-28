class CfVault < Formula
  desc "Manage your Cloudflare credentials, securely"
  homepage "https://github.com/jacobbednarz/cf-vault"
  url "https://github.com/jacobbednarz/cf-vault/archive/refs/tags/v0.0.23.tar.gz"
  sha256 "8cc26cd31afeb6a4cacf174d027e1c7a14b391c69fa30c0623b8cabad363735b"
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
