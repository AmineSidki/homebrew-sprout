# Generated with JReleaser 1.13.1 at 2026-02-21T13:19:42.950142373Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  version "1.6.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6.3/sprout-osx-x86_64.zip"
    sha256 "11738a6ebfcfd1ddfb0594de123d98fefd898d6220afb641b9f84c0e4631886b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6.3/sprout-osx-x86_64.zip"
    sha256 "11738a6ebfcfd1ddfb0594de123d98fefd898d6220afb641b9f84c0e4631886b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.6.3", output
  end
end
