class Frieza < Formula
  desc "Tool to cleanup your cloud resources"
  homepage "https://github.com/outscale/frieza"
  url "https://github.com/outscale/frieza.git", tag: "v0.14.1"
  license "BSD-3-Clause"
  head "https://github.com/outscale/frieza.git", branch: "main"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "cmd/frieza/frieza"
  end

  test do
    run_output = shell_output("#{bin}/frieza 2>&1")
    assert_match "Cleanup your cloud ressources.", run_output
  end
end
