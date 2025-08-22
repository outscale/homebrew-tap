class OscLogs < Formula
  desc "Constantly fetch API call logs for easily consult and keep them"
  homepage "https://github.com/outscale/osc-logs"
  url "https://github.com/outscale/osc-logs.git",
    tag:      "v0.1.3",
    revision: "7b9bd6f132b969546654818fe4f232a4553aff72"
  license "BSD-3-Clause"
  head "https://github.com/outscale/osc-logs.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = ["-s", "-w"]
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    assert_match "osc-logs", shell_output("#{bin}/osc-logs")
  end
end
