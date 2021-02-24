class Kubens < Formula
  homepage "https://github.com/ahmetb/kubectx"
  url "https://github.com/ahmetb/kubectx/releases/download/v0.9.1/kubens_v0.9.1_darwin_x86_64.tar.gz"
  sha256 "4ae390ba702d57355d5fb9f2bba04c9b00ae39f740c59044c2d39cd6bfa0ab18"
  license ""

  def install
    bin.install "kubens"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/kubens -h 2>&1")
  end
end
