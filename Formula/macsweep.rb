class Macsweep < Formula
  desc "Clean up and look after your Mac from a simple terminal menu"
  homepage "https://github.com/shannong57/macsweep"
  url "https://github.com/shannong57/macsweep/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "7cef0fa079865ebdc24518752471c412c12b0265378667b9ff69cfd3242536e4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep version")
  end
end
