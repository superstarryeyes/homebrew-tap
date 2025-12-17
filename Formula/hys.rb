class Hys < Formula
  desc "RSS Reader for Digital Minimalists"
  homepage "https://github.com/superstarryeyes/hys"
  url "https://github.com/superstarryeyes/hys/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "8fa2f2a515f9053a9e7753ab0e8d730e2f0115bcb3228afafc76ea88db1ca176"
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
