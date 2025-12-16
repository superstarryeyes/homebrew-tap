class Hys < Formula
  desc "RSS Reader for Digital Minimalists"
  homepage "https://github.com/superstarryeyes/hys"
  url "https://github.com/superstarryeyes/hys/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "zig" => :build
  depends_on "curl"
  depends_on "pkg-config" => :build

  def install
    system "zig", "build", "install", "--prefix", prefix, "-Doptimize=ReleaseSafe"
  end

  test do
    assert_match "hys", shell_output("#{bin}/hys --version")
  end
end
