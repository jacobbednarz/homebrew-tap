class CfVault < Formula
  desc "Manage your Cloudflare credentials, securely"
  homepage "https://github.com/jacobbednarz/cf-vault"
  url "https://codeload.github.com/jacobbednarz/cf-vault/tar.gz/refs/tags/v0.0.22"
  sha256 "f000b3f1ceffaf709c6b14fc1ed6a5eafb6085f37d8590338f24363d2af63f20"
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
