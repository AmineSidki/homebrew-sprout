# Generated with JReleaser 1.13.1 at 2026-10-12T22:18:42.972499318Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v2.1/sprout-2.1.zip"
  version "2.1"
  sha256 "0f1b10921b25351ae3292c34e5d4747d33f9d2398f3434a9ef2eb6c1a4fb04eb"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "2.1", output
  end
end
