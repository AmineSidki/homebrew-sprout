# Generated with JReleaser 1.13.1 at 2026-10-12T21:05:24.547516318Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v2.0/sprout-2.0.zip"
  version "2.0"
  sha256 "10128e351b0aed1b1e65332414fe197ec0deedebd889e823657a5295390ff1a2"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "2.0", output
  end
end
