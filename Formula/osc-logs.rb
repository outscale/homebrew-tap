class OscLogs < Formula
  desc "osc-logs constantly fetch API call logs from Outscale to easily consult and keep them."
  homepage "https://github.com/outscale/osc-logs"
  url "https://github.com/outscale/osc-logs/releases/download/v0.1.3/osc-logs-v0.1.3-darwin-amd64.tar.gz"
  sha256 "964f6df69a25ffa9576c786ec993ba55714f121f0752b8c86c4e4d622a391560"

  version "0.1.3"
  license "BSD-3-Clause"

  def install
    bin.install "osc-logs"
  end

  test do
    assert_match "osc-logs", shell_output("#{bin}/osc-logs")
  end
end
