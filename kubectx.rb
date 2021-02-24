class Kubectx < Formula
  homepage "https://github.com/ahmetb/kubectx"
  url "https://github.com/ahmetb/kubectx/releases/download/v0.9.1/kubectx_v0.9.1_darwin_x86_64.tar.gz"
  sha256 "a46c5cf1f6ba8f6aa4dc75fc5a7086d294a28a19cf2fbbf18ac54108a7f713e1"
  license ""

  def install
    bin.install "kubectx"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/kubectx -h 2>&1")
  end
end
