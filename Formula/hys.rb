class Hys < Formula
  desc "RSS Reader for Digital Minimalists"
  homepage "https://github.com/superstarryeyes/hys"
  url "https://github.com/superstarryeyes/hys/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "38340bf3bd5392b0944b23114719f7d5bf1420a0dcdab05e41c190aaa8a62bf4"
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
