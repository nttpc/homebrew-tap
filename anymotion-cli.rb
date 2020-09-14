class AnymotionCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for AnyMotion API"
  homepage "https://github.com/nttpc/anymotion-cli"
  url "https://files.pythonhosted.org/packages/8d/53/3d2f4e499a83017cd184696f4164260f79c02c8312fa01b1d4713699ba0f/anymotion-cli-1.2.0.tar.gz"
  sha256 "13cf32b17727df0e414809ee77eabb044260855ea785823ba853f9472f249dc5"

  depends_on "python@3.8"

  resource "anymotion-sdk" do
    url "https://files.pythonhosted.org/packages/9e/58/601d3478c08d62d8eaf799026784c83634034fdb793c7d3f37d647e63136/anymotion-sdk-1.2.2.tar.gz"
    sha256 "ea29beec5947784ad4ac040b6bdb49e5f10035be773350bcf85c32c810f49f74"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/40/a7/ded59fa294b85ca206082306bba75469a38ea1c7d44ea7e1d64f5443d67a/certifi-2020.6.20.tar.gz"
    sha256 "5930595817496dd21bb8dc35dad090f1c2cd0adfaf21204bf6732ca5d8ee34d3"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/18/0f/ae4b350b969dc1d8ecfcbdc1060d59ff025336a23f153ece49aa662a1309/prompt_toolkit-3.0.7.tar.gz"
    sha256 "822f4605f28f7d2ba6b0b09a31e25e140871e96364d1d377667b547bb3bf4489"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/5d/9d/208733ccc91b1d2c2af7270ffe3def197504bd8da875bc3fa1dc75039795/Pygments-2.7.0.tar.gz"
    sha256 "2594e8fdb06fef91552f86f4fd3a244d148ab24b66042036e64f29a291515048"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/da/67/672b422d9daf07365259958912ba533a0ecab839d4084c487a5fe9a5405f/requests-2.24.0.tar.gz"
    sha256 "b3559a131db72c33ee969480840fff4bb6dd111de7dd27c8ee1f820f4f00231b"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/57/6f/213d075ad03c84991d44e63b6516dd7d185091df5e1d02a660874f8f7e1e/tabulate-0.8.7.tar.gz"
    sha256 "db2723a20d04bcda8522165c73eea7c300eda74e0ce852d9022e0159d7895007"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/81/f4/87467aeb3afc4a6056e1fe86626d259ab97e1213b1dfec14c7cb5f538bf0/urllib3-1.25.10.tar.gz"
    sha256 "91056c15fa70756691db97756772bb1eb9678fa585d9184f24534b100dc60f4a"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/89/38/459b727c381504f361832b9e5ace19966de1a235d73cdbdea91c771a1155/wcwidth-0.2.5.tar.gz"
    sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
  end

  resource "yaspin" do
    url "https://files.pythonhosted.org/packages/ac/af/0b1430abcffa44a5376a13f0e95912f89145facb528ef08c801f71e9bbd0/yaspin-1.0.0.tar.gz"
    sha256 "97f4a08af09f14890cb7bad584327182716a758728bfd12ad73176e6955661da"
  end

  def install
    rm_f "pyproject.toml"

    venv = virtualenv_create(libexec, "python3")

    poetry_resources = %w[anymotion-sdk yaspin]
    poetry_resources.each do |r|
      resource(r).stage do
        rm_f "pyproject.toml"
        venv.pip_install Pathname.pwd
      end
    end

    res = resources.map(&:name).to_set - poetry_resources
    res.each do |r|
      venv.pip_install resource(r)
    end

    venv.pip_install_and_link buildpath
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/amcli --version")
  end
end
