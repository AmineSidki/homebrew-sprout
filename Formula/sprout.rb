# Generated with JReleaser 1.13.1 at 2026-06-30T18:22:34.815817462Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.6/sprout-1.9.6.zip"
  version "1.9.6"
  sha256 "5b4aa214e01750322d8424fcaffebcf114f915b81958274367e5e6eff5c9dc00"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.6", output
  end
end
