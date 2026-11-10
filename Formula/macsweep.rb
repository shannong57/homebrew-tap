class Macsweep < Formula
  desc "Clean up and look after your Mac from a simple terminal menu"
  homepage "https://github.com/shannong57/macsweep"
  url "https://github.com/shannong57/macsweep/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "60b941cea394ae6c6a57a3f5281fc63a966b87bab179b7ad6a08e2de319c77a7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep version")
  end
end
