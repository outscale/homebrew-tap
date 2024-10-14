class OapiCli < Formula
  desc "Official Outscale CLI providing connectors to Outscale API"
  homepage "https://github.com/outscale/oapi-cli"
  url "https://github.com/outscale/oapi-cli.git", tag: "v0.6.0"
  head "https://github.com/outscale/oapi-cli", branch: "v0.6.0"
  sha256 ""
  license "BSD-3-Clause"
  version "0.6.0"

  depends_on "curl"
  depends_on "json-c"
  depends_on "cmake" => :build


  def install
    system "git", "submodule", "update", "--init"
    system "make"
    system "mkdir -p #{prefix}/bin"
    system "cp ./oapi-cli #{prefix}/bin/"
    system "mkdir -p #{prefix}/contrib/completions/bash/"
    system "mkdir -p #{prefix}/contrib/completions/zsh/"
    system "cp ./oapi-cli-completion.bash #{prefix}/contrib/completions/bash/"
    system "echo autoload bashcompinit > #{prefix}/contrib/completions/zsh/oapi-cli-completion.zsh"
    system "echo bashcompinit >> #{prefix}/contrib/completions/zsh/oapi-cli-completion.zsh"
    system "echo source #{prefix}/contrib/completions/bash/oapi-cli-completion.bash >> #{prefix}/contrib/completions/zsh/oapi-cli-completion.zsh"
  end

  test do
    str = shell_output("#{bin}/oapi-cli --help")
    assert_match "Usage: oapi-cli [--help] CallName [options] [--Params ParamArgument]", str
  end
end
