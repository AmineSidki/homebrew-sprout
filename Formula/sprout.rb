# Generated with JReleaser 1.13.1 at 2026-02-22T02:23:51.175762969Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.7.2/sprout-1.7.2.zip"
  version "1.7.2"
  sha256 "f3b0ef33139260a90fe7cac9864a37ae483cc957c2b7ecf40e556ceddc50bd11"
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
