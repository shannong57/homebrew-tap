class Macsweep < Formula
  desc "Clean up and look after your Mac from a simple terminal menu"
  homepage "https://github.com/shannong57/macsweep"
  url "https://github.com/shannong57/macsweep/archive/refs/tags/v0.8.2.tar.gz"
  sha256 "b82d924f77e33d0cfc68fafe317a36f48337a8a227b0da36c6ad93ab945a1256"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep version")
  end
end
