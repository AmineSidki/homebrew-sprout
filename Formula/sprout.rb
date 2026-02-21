# Generated with JReleaser 1.13.1 at 2026-02-21T23:18:09.305128828Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.7.1/sprout-1.7.1.zip"
  version "1.7.1"
  sha256 "a3d22dd6ce241ce67657a489c4f6e4333b4061d10847450b130b8b7db2a2c4a1"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.7.1", output
  end
end
