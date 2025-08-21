class OscTui < Formula
  include Language::Python::Virtualenv

  desc "Outscale TUI providing connectors to Outscale API"
  homepage "https://github.com/outscale/osc-tui"
  url "https://files.pythonhosted.org/packages/1b/81/8dbbcaced59b680af6814b189a5d0c5e211fa6e99a1a4af17e2ff902d7c2/osc_tui-25.3.0.tar.gz"
  sha256 "7f839dc7eeee53c558f21daef56dcf3e62297f27dc86b08d7c4ea0ca940d4cd8"
  license "BSD-3-Clause"

  depends_on "libyaml"
  depends_on "python@3.12"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/dc/67/960ebe6bf230a96cda2e0abcf73af550ec4f090005363542f0765df162e0/certifi-2025.8.3.tar.gz"
    sha256 "e564105f78ded564e3ae7c923924435e1daa7463faeab5bb932bc53ffae63407"
  end

  resource "cfgv" do
    url "https://files.pythonhosted.org/packages/11/74/539e56497d9bd1d484fd863dd69cbbfa653cd2aa27abfe35653494d85e94/cfgv-3.4.0.tar.gz"
    sha256 "e52591d4c5f5dead8e0f673fb16db7949d2cfb3f7da4582893288f0ded8fe560"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/83/2d/5fd176ceb9b2fc619e63405525573493ca23441330fcdaee6bef9460e924/charset_normalizer-3.4.3.tar.gz"
    sha256 "6fce4b8500244f6fcb71465d4a4930d132ba9ab8e71a7859e6a5d59851068d14"
  end

  resource "diagrams" do
    url "https://files.pythonhosted.org/packages/0c/50/abb3442117b933ae08c948b4c08672eba5f78a35ef820c03f5979affbe3b/diagrams-0.24.4.tar.gz"
    sha256 "367b3056bc8875b5a32dcf66c7aad961cb83527b8f345dced82f17ee82781f72"
  end

  resource "distlib" do
    url "https://files.pythonhosted.org/packages/96/8e/709914eb2b5749865801041647dc7f4e6d00b549cfe88b65ca192995f07c/distlib-0.4.0.tar.gz"
    sha256 "feec40075be03a04501a973d81f633735b4b69f98b05450592310c0f401a4e0d"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/40/bb/0ab3e58d22305b6f5440629d20683af28959bf793d98d11950e305c1c326/filelock-3.19.1.tar.gz"
    sha256 "66eda1888b0171c998b35be2bcc0f6d75c388a7ce20c3f3f37aa8e96c2dddf58"
  end

  resource "graphviz" do
    url "https://files.pythonhosted.org/packages/fa/83/5a40d19b8347f017e417710907f824915fba411a9befd092e52746b63e9f/graphviz-0.20.3.zip"
    sha256 "09d6bc81e6a9fa392e7ba52135a9d49f1ed62526f96499325930e87ca1b5925d"
  end

  resource "identify" do
    url "https://files.pythonhosted.org/packages/82/ca/ffbabe3635bb839aa36b3a893c91a9b0d368cb4d8073e03a12896970af82/identify-2.6.13.tar.gz"
    sha256 "da8d6c828e773620e13bfa86ea601c5a5310ba4bcd65edf378198b56a1f9fb32"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
    sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
  end

  resource "nodeenv" do
    url "https://files.pythonhosted.org/packages/43/16/fc88b08840de0e0a72a2f9d8c6bae36be573e475a6326ae854bcc549fc45/nodeenv-1.9.1.tar.gz"
    sha256 "6ec12890a2dab7946721edbfbcd91f3319c6ccc9aec47be7c7e6b7011ee6645f"
  end

  resource "osc-diagram" do
    url "https://files.pythonhosted.org/packages/a2/fc/fe8343b917286e454804decb5db7a420ebfa6ae333fb6987b4d301d10c34/osc_diagram-0.0.2.tar.gz"
    sha256 "aea5e6a6a2cc8f631aa4407855f37022b6c3f396a1b9832c787d964a389abd97"
  end

  resource "osc-npyscreen" do
    url "https://files.pythonhosted.org/packages/c1/9c/ec8544951977298ae212af2b0da39e81e6c64bb83689cdc126587fc1197d/osc_npyscreen-4.9.2.tar.gz"
    sha256 "676ad26a0f1500d7dbad347db59a3afb334955596b99931e971c278977b95b81"
  end

  resource "osc-sdk-python" do
    url "https://files.pythonhosted.org/packages/00/2b/e428f20249bdf10665c7a2d59daaffc5f406072e34753384de3d718b4fe2/osc_sdk_python-0.36.0.tar.gz"
    sha256 "e96de7b13e8ce06beee64736e4059a2b1accbe4918176f94a0aee97201ed0a86"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/fe/8b/3c73abc9c759ecd3f1f7ceff6685840859e8070c4d947c93fae71f6a0bf2/platformdirs-4.3.8.tar.gz"
    sha256 "3d512d96e16bcb959a814c9f348431070822a6496326a4be0911c40b5a74c2bc"
  end

  resource "pre-commit" do
    url "https://files.pythonhosted.org/packages/ff/29/7cf5bbc236333876e4b41f56e06857a87937ce4bf91e117a6991a2dbb02a/pre_commit-4.3.0.tar.gz"
    sha256 "499fe450cc9d42e9d58e606262795ecb64dd05438943c62b66f6a8673da30b16"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/30/23/2f0a3efc4d6a32f3b63cdff36cd398d9701d26cda58e3ab97ac79fb5e60d/pyperclip-1.9.0.tar.gz"
    sha256 "b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/39/87/6da0df742a4684263261c253f00edd5829e6aca970fff69e75028cccc547/ruamel.yaml-0.18.14.tar.gz"
    sha256 "7227b76aaec364df15936730efbf7d72b30c0b79b1d578bbb8e3dcb2d81f52b7"
  end

  resource "ruamel-yaml-clib" do
    url "https://files.pythonhosted.org/packages/20/84/80203abff8ea4993a87d823a5f632e4d92831ef75d404c9fc78d0176d2b5/ruamel.yaml.clib-0.2.12.tar.gz"
    sha256 "6c8fbb13ec503f99a91901ab46e0b07ae7941cd527393187039aec586fdfd36f"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/18/5d/3bf57dcd21979b887f014ea83c24ae194cfcd12b9e0fda66b957c69d1fca/setuptools-80.9.0.tar.gz"
    sha256 "f36b47402ecde768dbfafc46e8e4207b4360c654f1f3bb84475f0a28628fb19c"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz"
    sha256 "3fc47733c7e419d4bc3f6b3dc2b4f890bb743906a30d56ba4a5bfa4bbff92760"
  end

  resource "virtualenv" do
    url "https://files.pythonhosted.org/packages/1c/14/37fcdba2808a6c615681cd216fecae00413c9dab44fb2e57805ecf3eaee3/virtualenv-20.34.0.tar.gz"
    sha256 "44815b2c9dee7ed86e387b842a84f20b93f7f417f95886ca1996a72a4138eb1a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    str = shell_output("#{bin}/osc-tui --help")
    assert_match "usage: osc-tui [OPTION]", str
  end
end
