class Octl < Formula
  desc "Modern CLI for Outscale"
  homepage "https://github.com/outscale/octl"
  url "https://github.com/outscale/octl.git",
    tag:      "v0.0.26",
    revision: "f2a6ecc6d7b2a9a3f1f140bd9c0845d48df24842"
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
