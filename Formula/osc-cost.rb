class OscCost < Formula
  desc "osc-cost allows Outscale users to estimate their cloud costs."
  homepage "https://github.com/outscale/osc-cost"
  url "https://github.com/outscale/osc-cost/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "79566899f0bed0393b0feb2920c9f2e1ced59c5fea7c3999c69e7de5003a68b8"
  license "BSD-3-Clause"

  bottle do
    sha256 cellar: :any_skip_relocation, x86_64_darwin:         "dfec6444cdc4eecead4ab67d35a3d841a4fd72c2a12614f69d73ce807e47fcb9"
    sha256 cellar: :any_skip_relocation, arm64_darwin:          "629274c08e5789d44b3df692b425e84dc2a5368e2dca5eeee709fa7ebc8c0425"
    sha256 cellar: :any_skip_relocation, x86_64_linux:          "bac270eb8c8d38fbb2a1e247ea1c557f85a8dfa0b9786a402e0a81a1d34f6650"        
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    str = shell_output("#{bin}/osc-cost --help")
    assert_match "osc-cost", str
  end
end
