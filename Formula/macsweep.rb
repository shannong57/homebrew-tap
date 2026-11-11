class Macsweep < Formula
  desc "Clean up and look after your Mac from a simple terminal menu"
  homepage "https://github.com/shannong57/macsweep"
  url "https://github.com/shannong57/macsweep/archive/refs/tags/v0.13.1.tar.gz"
  sha256 "4bdf061da60ff24d22179ed884e69539635d554889af223fab138228f1d82a44"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep version")
  end
end
