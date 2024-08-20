class OscTui < Formula
  include Language::Python::Virtualenv

  desc "Outscale TUI providing connectors to Outscale API"
  homepage "https://github.com/outscale/osc-tui"
  url "https://files.pythonhosted.org/packages/23/5b/7ea740ee2333ac86ca3124f9b1abceaee6d71a29e462d1937817c766272c/osc_tui-24.6.1.tar.gz"
  sha256 "119a2b1d73dddbd9408fcd9641dec04781e64d6172f2f71c6e7caf5afec249dc"
  license "BSD-3-Clause"


  depends_on "python@3.12"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/c2/02/a95f2b11e207f68bc64d7aae9666fed2e2b3f307748d5123dffb72a1bbea/certifi-2024.7.4.tar.gz"
    sha256 "5a1e7645bc0ec61a09e26c36f6106dd4cf40c6db3a1fb6352b0244e7fb057c7b"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "diagrams" do
    url "https://files.pythonhosted.org/packages/42/61/44cc86725be481d87c7f35de39cdc21e57ad38dca90d81a2dd14a166ecd2/diagrams-0.23.4.tar.gz"
    sha256 "b7ada0b119b5189dd021b1dc1467fad3704737452bb18b1e06d05e4d1fa48ed7"
  end

  resource "graphviz" do
    url "https://files.pythonhosted.org/packages/fa/83/5a40d19b8347f017e417710907f824915fba411a9befd092e52746b63e9f/graphviz-0.20.3.zip"
    sha256 "09d6bc81e6a9fa392e7ba52135a9d49f1ed62526f96499325930e87ca1b5925d"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/21/ed/f86a79a07470cb07819390452f178b3bef1d375f2ec021ecfc709fc7cf07/idna-3.7.tar.gz"
    sha256 "028ff3aadf0609c1fd278d8ea3089299412a7a8b9bd005dd08b9f8285bcb5cfc"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/ed/55/39036716d19cab0747a5020fc7e907f362fbf48c984b14e62127f7e68e5d/jinja2-3.1.4.tar.gz"
    sha256 "4a3aee7acbbe7303aede8e9648d13b8bf88a429282aa6122a993f0ac800cb369"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/87/5b/aae44c6655f3801e81aa3eef09dbbf012431987ba564d7231722f68df02d/MarkupSafe-2.1.5.tar.gz"
    sha256 "d283d37a890ba4c1ae73ffadf8046435c76e7bc2247bbb63c00bd1a709c6544b"
  end

  resource "osc-diagram" do
    url "https://files.pythonhosted.org/packages/a2/fc/fe8343b917286e454804decb5db7a420ebfa6ae333fb6987b4d301d10c34/osc_diagram-0.0.2.tar.gz"
    sha256 "aea5e6a6a2cc8f631aa4407855f37022b6c3f396a1b9832c787d964a389abd97"
  end

  resource "osc-npyscreen" do
    url "https://files.pythonhosted.org/packages/89/49/d6305289ac5e9efee78f774d761d5607d5c067a50a2fca7647a35ca93a67/osc_npyscreen-4.9.1.tar.gz"
    sha256 "0123d40af2669f18e7f03e6d56122c2e94112db367f38b4ff3b64185a7a842a5"
  end

  resource "osc-sdk-python" do
    url "https://files.pythonhosted.org/packages/a1/cf/6dd6b2566a94c96251612fd7adc324cde9e0f39c3857bc6976b446c08c39/osc_sdk_python-0.30.1.tar.gz"
    sha256 "10306fea6786d3d9293ae181066fb0b60d34195cb0a55c742177dd2f3287c903"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/30/23/2f0a3efc4d6a32f3b63cdff36cd398d9701d26cda58e3ab97ac79fb5e60d/pyperclip-1.9.0.tar.gz"
    sha256 "b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/63/dd/b4719a290e49015536bd0ab06ab13e3b468d8697bec6c2f668ac48b05661/ruamel.yaml-0.17.32.tar.gz"
    sha256 "ec939063761914e14542972a5cba6d33c23b0859ab6342f61cf070cfc600efc2"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/98/0b/56dabcf2b37d9152090bcd5d42e28ad312c9ba54fb1446b22dcc809dd84a/setuptools-73.0.0.tar.gz"
    sha256 "3c08705fadfc8c7c445cf4d98078f0fafb9225775b2b4e8447e40348f82597c0"
  end

  resource "typed-ast" do
    url "https://files.pythonhosted.org/packages/f9/7e/a424029f350aa8078b75fd0d360a787a273ca753a678d1104c5fa4f3072a/typed_ast-1.5.5.tar.gz"
    sha256 "94282f7a354f36ef5dbce0ef3467ebf6a258e370ab33d5b40c249fa996e590dd"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/43/6d/fa469ae21497ddc8bc93e5877702dca7cb8f911e337aca7452b5724f1bb6/urllib3-2.2.2.tar.gz"
    sha256 "dd505485549a7a552833da5e6063639d0d177c04f23bc3864e41e5dc5f612168"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    str = shell_output("#{bin}/osc-tui --help")
    assert_match "usage: osc-tui [OPTION]", str
  end
end
