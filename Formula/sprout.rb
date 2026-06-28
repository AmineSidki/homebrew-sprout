# Generated with JReleaser 1.13.1 at 2026-06-28T13:52:55.422158208Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.1/sprout-1.9.1.zip"
  version "1.9.1"
  sha256 "9590321d400e5b5e0849e4510f0152062f0e61a0033193df4c421fc99a652b1e"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.1", output
  end
end
