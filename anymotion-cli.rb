class AnymotionCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for AnyMotion API"
  homepage "https://github.com/nttpc/anymotion-cli"
  url "https://files.pythonhosted.org/packages/f1/ed/3777d232cd8100b87f680a506735f8cbf811daad55b6f440a5b173a4ea37/anymotion-cli-1.1.0.tar.gz"
  sha256 "c6b23592d42746d16e0c5fd85244bbadf81e612581c72382a2d4b3c913aa478a"

  depends_on "python@3.8"

  resource "anymotion-sdk" do
    url "https://files.pythonhosted.org/packages/fe/e9/c344cacafe02d1dba52b5637558bff04bb4376749004750c401fdfb01c36/anymotion-sdk-1.2.1.tar.gz"
    sha256 "08b5f7994826ee596c79cd72b3f5578a1083c78fd0c098b657e32a9b4bc6a8c8"
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

  resource "click-help-colors" do
    url "https://files.pythonhosted.org/packages/cc/3f/6d6f3edb803eb58cd619a19f3af073f9e1b80529c73e8b02b8cc12e0ee3c/click-help-colors-0.8.tar.gz"
    sha256 "119e5faf69cfc919c995c5962326ac8fd87f11e56a371af594e3dfd8458f4c6e"
  end

  resource "click-repl" do
    url "https://files.pythonhosted.org/packages/51/99/6a722e232f92fdc21c46fd042fea63e7c2fcda3086ff5db62edd595d3f49/click-repl-0.1.6.tar.gz"
    sha256 "b9f29d52abc4d6059f8e276132a111ab8d94980afe6a5432b9d996544afa95d5"
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
    url "https://files.pythonhosted.org/packages/6e/4d/4d2fe93a35dfba417311a4ff627489a947b01dc0cc377a3673c00cf7e4b2/Pygments-2.6.1.tar.gz"
    sha256 "647344a061c249a3b74e230c739f434d7ea4d8b1d5f3721bc0f3558049b38f44"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/da/67/672b422d9daf07365259958912ba533a0ecab839d4084c487a5fe9a5405f/requests-2.24.0.tar.gz"
    sha256 "b3559a131db72c33ee969480840fff4bb6dd111de7dd27c8ee1f820f4f00231b"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
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
    system "#{bin}/amcli", "--version"
  end
end
