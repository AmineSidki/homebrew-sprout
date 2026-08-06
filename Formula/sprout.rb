# Generated with JReleaser 1.13.1 at 2026-08-06T23:59:50.960253876Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.9/sprout-1.9.9.zip"
  version "1.9.9"
  sha256 "d1d89612ccf83e760391a32bf1a2c811dcf6aebd0bc18e9d20a2385b3bb8c2b7"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.9", output
  end
end
