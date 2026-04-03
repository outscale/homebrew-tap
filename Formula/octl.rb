class Octl < Formula
  desc "Modern CLI for Outscale"
  homepage "https://github.com/outscale/octl"
  url "https://github.com/outscale/octl.git",
    tag:      "v0.0.21",
    revision: "13b14e6d13ce1dd4d0a039141508d7a0fbcd7d44"
  license "BSD-3-Clause"
  head "https://github.com/outscale/octl.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "mod", "tidy"
    ldflags = ["-s", "-w", "-X=github.com/outscale/octl/pkg/version.Version=v#{version}"]
    system "go", "build", "-tags=homebrew", *std_go_args(ldflags:)

    generate_completions_from_executable(bin/"octl", shell_parameter_format: :cobra)
  end

  test do
    run_output = shell_output("#{bin}/octl 2>&1")
    assert_match "One CLI to rule them all", run_output
  end
end
