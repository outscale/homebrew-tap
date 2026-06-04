class Octl < Formula
  desc "Modern CLI for Outscale"
  homepage "https://github.com/outscale/octl"
  url "https://github.com/outscale/octl.git",
    tag:      "v0.0.24",
    revision: "ed8be67e2b0b3aaa509088fd12ed043640f9218a"
  license "BSD-3-Clause"
  head "https://github.com/outscale/octl.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "mod", "tidy"
    ldflags = ["-s", "-w", "-X=github.com/outscale/octl/pkg/version.Version=v#{version}", "-X=k8s.io/component-base/version.gitVersion=v1.35.3+octl"]
    system "go", "build", "-tags=homebrew", *std_go_args(ldflags:)

    generate_completions_from_executable(bin/"octl", shell_parameter_format: :cobra)
  end

  test do
    run_output = shell_output("#{bin}/octl 2>&1")
    assert_match "One CLI to rule them all", run_output
  end
end
