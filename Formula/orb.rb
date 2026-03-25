class Orb < Formula
  desc "A powerful cURL alternative with HTTP/1.1, HTTP/2, and HTTP/3 support"
  homepage "https://github.com/WalshyDev/orb"
  version "0.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/WalshyDev/orb/releases/download/v#{version}/orb-macos"
    sha256 "6cfada8d64935cc41cfbc9e0aacd01b7057dc93ae99f164ccc4e6698d0e345b2"
  end

  on_linux do
    url "https://github.com/WalshyDev/orb/releases/download/v#{version}/orb-linux"
    sha256 "ce2e4dad72be2da8cfd242e81c9aa60ef8ccafb42a37456e75e311ec574541ee"
  end

  head "https://github.com/WalshyDev/orb.git", branch: "main"

  depends_on "rust" => :build

  def install
    if build.head?
      system "cargo", "build", "--release", "--manifest-path", "packages/orb-cli/Cargo.toml"
      bin.install "target/release/orb"
    else
      case OS.kernel_name
      when "Darwin"
        bin.install "orb-macos" => "orb"
      when "Linux"
        bin.install "orb-linux" => "orb"
      end
    end
  end

  test do
    assert_match "orb", shell_output("#{bin}/orb --version").strip
  end
end
