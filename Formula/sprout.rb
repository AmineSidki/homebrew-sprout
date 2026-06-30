# Generated with JReleaser 1.13.1 at 2026-06-30T14:14:36.185761516Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.2/sprout-1.9.2.zip"
  version "1.9.2"
  sha256 "f32c286ad86c2648d3562a4b82a3dbe6c4eaf2e10200ee47905878cf649b494d"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.2", output
  end
end
