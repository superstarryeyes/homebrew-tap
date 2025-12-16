class Hys < Formula
  desc "RSS Reader for Digital Minimalists"
  homepage "https://github.com/superstarryeyes/hys"
  url "https://github.com/superstarryeyes/hys/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "137cc1c2ace93fc34c124b22266fc7f2f2279a048f4005c559ccbe9eb29a01f7"
  license "MIT"

  depends_on "pkg-config" => :build
  depends_on "zig" => :build
  depends_on "curl"

  def install
    system "zig", "build", "install", "--prefix", prefix, "-Doptimize=ReleaseSafe"
  end

  test do
    assert_match "hys", shell_output("#{bin}/hys --version")
  end
end
