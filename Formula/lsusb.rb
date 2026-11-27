class Lsusb < Formula
  desc "List USB devices, just like the Linux lsusb command"
  homepage "https://github.com/wero1414/lsusb"
  url "https://github.com/wero1414/lsusb/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "cd28e155c4f3287f8cf24c7ec98936114fbe3b2116a6b58b2e6345d1c2f0540c"
  license "MIT"
  head "https://github.com/wero1414/lsusb.git", branch: "master"

  depends_on :macos

  conflicts_with "usbutils", because: "both install an `lsusb` binary"

  def install
    bin.install "lsusb"
    man8.install "man/lsusb.8"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/lsusb -h 2>&1")
  end
end
