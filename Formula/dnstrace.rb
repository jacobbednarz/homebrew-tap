class Dnstrace < Formula
  desc "DNS resolution tracing tool"
  homepage "https://github.com/rs/dnstrace"
  url "https://github.com/rs/dnstrace/archive/10cbc1bd2f12284dfe04c6ba35abac33abfadace.tar.gz"
  version "1.4.0"
  sha256 "abe86575408d591e98d3a9f0063fa2882b427e5730fab36ecf1024df5c04cdca"
  license "MIT"
  head "https://github.com/rs/dnstrace.git"

  depends_on "go" => :build

  def install
    system "go", "get", "-u", "golang.org/x/net"
    system "go", "mod", "tidy"
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "query A example.com.", shell_output("#{bin}/dnstrace -color=false example.com 2>&1")
  end
end
