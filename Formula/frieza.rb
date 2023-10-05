class Frieza < Formula
  desc "A tool to cleanup your cloud resources"
  homepage "https://github.com/outscale/frieza"
  url "https://github.com/outscale-dev/frieza.git", :tag => "v0.6.0"
  license "BSD-3-Clause"

  depends_on "go" => :build
  
  def install
    system "make", "build"
    bin.install "cmd/frieza/frieza"
  end
  
  test do
    assert_match "frieza", shell_output("#{bin}/frieza --help")
  end
end
