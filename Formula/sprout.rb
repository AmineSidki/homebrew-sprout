# Generated with JReleaser 1.13.1 at 2026-02-22T00:10:27.263702097Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.7.2/sprout-1.7.2.zip"
  version "1.7.2"
  sha256 "b032ee867bab2aff8a6f2c68f4bdda9f5d1daa9f7d5ac50846ba42d6b3682d10"
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
