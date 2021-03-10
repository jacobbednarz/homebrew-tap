class Rdap < Formula
  desc "RDAP command line client"
  homepage "https://www.openrdap.org"
  url "https://github.com/openrdap/rdap/archive/v0.9.0.tar.gz"
  sha256 "44ce757b0a2a3a98613e9a620e85435c6ce7f8075334ef2a5fef96145d178f31"
  license "MIT"
  head "https://github.com/openrdap/rdap.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "rdap", "cmd/rdap/main.go"
    bin.install "rdap"
  end

  test do
    system "#{bin}/rdap", "-v", "example.com"
  end
end
