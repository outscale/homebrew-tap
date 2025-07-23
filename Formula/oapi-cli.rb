class OapiCli < Formula
  desc "Official Outscale CLI providing connectors to Outscale API"
  homepage "https://github.com/outscale/oapi-cli"
  url "https://github.com/outscale/oapi-cli.git", tag: "v0.10.0"

  license "BSD-3-Clause"

  depends_on "pkgconf" => :build
  depends_on "curl"
  depends_on "json-c"

  conflicts_with "oapi-cli-git", because: "each are different versions of the same formula"

  def install
    system "git", "submodule", "update", "--init"
    system "make"
    bin.install "oapi-cli"
    mkdir_p "#{prefix}/contrib/completions/bash/"
    mkdir_p "#{prefix}/contrib/completions/zsh/"
    cp "./oapi-cli-completion.bash", "#{prefix}/contrib/completions/bash/"

    zshcomp = (prefix/"contrib/completions/zsh/oapi-cli-completion.zsh")
    zshcomp.write <<~ZSH
      autoload bashcompinit
      bashcompinit
      source #{prefix}/contrib/completions/bash/oapi-cli-completion.bash
    ZSH
  end

  test do
    str = shell_output("#{bin}/oapi-cli --help")
    assert_match "Usage: oapi-cli [--help] CallName [options] [--Params ParamArgument]", str
  end
end
