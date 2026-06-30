# Generated with JReleaser 1.13.1 at 2026-06-30T15:54:46.870003373Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.3/sprout-1.9.3.zip"
  version "1.9.3"
  sha256 "2f5af8cbf0753fdb7deb282e9212594cfbd818c25959b053aa5bc41a2549a3f3"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.3", output
  end
end
