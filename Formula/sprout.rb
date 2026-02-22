# Generated with JReleaser 1.13.1 at 2026-02-22T01:52:44.436607437Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.7.2/sprout-1.7.2.zip"
  version "1.7.2"
  sha256 "10225fff0c7ecde05534f8d2d83e080283e80e0f5c58a058511d4a16486c5ff7"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.7.2", output
  end
end
