class AnymotionCli < Formula
  include Language::Python::Virtualenv

  desc 'Command Line Interface for AnyMotion API'
  homepage 'https://github.com/nttpc/anymotion-cli'
  url 'https://files.pythonhosted.org/packages/f4/7f/e58cf323483db5a50cb06eeda2c66a097d1ce3db897b3b47380e6ffd5c34/anymotion-cli-1.0.1.tar.gz'
  version '1.0.1'
  sha256 '7fad4d4e3270d57a78c3a1b3d955bb7475b999e731b7255a3f2ec5d3d9c090fe'
  license 'MIT'

  depends_on 'python@3.8'

  resource 'anymotion-sdk' do
    url 'https://files.pythonhosted.org/packages/77/c2/ba835afea8304bd61a2c3f34d4cdc2af8eccba67a1619074267dc609afbd/anymotion-sdk-1.0.1.tar.gz'
    sha256 '3aa0d246aedace82f44067d31b02574a7d124f2d4fe2116e8d705f2b3384037d'
  end

  resource 'certifi' do
    url 'https://files.pythonhosted.org/packages/b8/e2/a3a86a67c3fc8249ed305fc7b7d290ebe5e4d46ad45573884761ef4dea7b/certifi-2020.4.5.1.tar.gz'
    sha256 '51fcb31174be6e6664c5f69e3e1691a2d72a1a12e90f872cbdb1567eb47b6519'
  end

  resource 'chardet' do
    url 'https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz'
    sha256 '84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae'
  end

  resource 'click' do
    url 'https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz'
    sha256 'd2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a'
  end

  resource 'click-help-colors' do
    url 'https://files.pythonhosted.org/packages/dd/31/011c35fbb799569acc90b77931aa6a2b5834d087bd78df968e7e5486c04d/click-help-colors-0.6.tar.gz'
    sha256 '258d5f4d79e54af8d017c07313456db22e636c964dd0808a2fb0aefc654ee30c'
  end

  resource 'click-repl' do
    url 'https://files.pythonhosted.org/packages/51/99/6a722e232f92fdc21c46fd042fea63e7c2fcda3086ff5db62edd595d3f49/click-repl-0.1.6.tar.gz'
    sha256 'b9f29d52abc4d6059f8e276132a111ab8d94980afe6a5432b9d996544afa95d5'
  end

  resource 'idna' do
    url 'https://files.pythonhosted.org/packages/cb/19/57503b5de719ee45e83472f339f617b0c01ad75cba44aba1e4c97c2b0abd/idna-2.9.tar.gz'
    sha256 '7588d1c14ae4c77d74036e8c22ff447b26d0fde8f007354fd48a7814db15b7cb'
  end

  resource 'prompt-toolkit' do
    url 'https://files.pythonhosted.org/packages/8f/bc/58ba47a2a864d8e3d968d03b577c85fbdf52c8d324a030df71ac9c06c1b5/prompt_toolkit-3.0.3.tar.gz'
    sha256 'a402e9bf468b63314e37460b68ba68243d55b2f8c4d0192f85a019af3945050e'
  end

  resource 'Pygments' do
    url 'https://files.pythonhosted.org/packages/6e/4d/4d2fe93a35dfba417311a4ff627489a947b01dc0cc377a3673c00cf7e4b2/Pygments-2.6.1.tar.gz'
    sha256 '647344a061c249a3b74e230c739f434d7ea4d8b1d5f3721bc0f3558049b38f44'
  end

  resource 'requests' do
    url 'https://files.pythonhosted.org/packages/f5/4f/280162d4bd4d8aad241a21aecff7a6e46891b905a4341e7ab549ebaf7915/requests-2.23.0.tar.gz'
    sha256 'b3f43d496c6daba4493e7c431722aeb7dbc6288f52a6e04e7b6023b0247817e6'
  end

  resource 'six' do
    url 'https://files.pythonhosted.org/packages/21/9f/b251f7f8a76dec1d6651be194dfba8fb8d7781d10ab3987190de8391d08e/six-1.14.0.tar.gz'
    sha256 '236bdbdce46e6e6a3d61a337c0f8b763ca1e8717c03b369e87a7ec7ce1319c0a'
  end

  resource 'tabulate' do
    url 'https://files.pythonhosted.org/packages/57/6f/213d075ad03c84991d44e63b6516dd7d185091df5e1d02a660874f8f7e1e/tabulate-0.8.7.tar.gz'
    sha256 'db2723a20d04bcda8522165c73eea7c300eda74e0ce852d9022e0159d7895007'
  end

  resource 'urllib3' do
    url 'https://files.pythonhosted.org/packages/05/8c/40cd6949373e23081b3ea20d5594ae523e681b6f472e600fbc95ed046a36/urllib3-1.25.9.tar.gz'
    sha256 '3018294ebefce6572a474f0604c2021e33b3fd8006ecd11d62107a5d2a963527'
  end

  resource 'wcwidth' do
    url 'https://files.pythonhosted.org/packages/25/9d/0acbed6e4a4be4fc99148f275488580968f44ddb5e69b8ceb53fc9df55a0/wcwidth-0.1.9.tar.gz'
    sha256 'ee73862862a156bf77ff92b09034fc4825dd3af9cf81bc5b360668d425f3c5f1'
  end

  resource 'yaspin' do
    url 'https://files.pythonhosted.org/packages/c4/60/f9e9036afb89e2e22fef79bcfbb73f4095826b96e191e6aed411c893dd9d/yaspin-0.16.0.tar.gz'
    sha256 'efca3eb7162e575d3ab2e49743cd9bd1f5ec2adc7d85b9489ab145a3f6460ed4'
  end

  def install
    rm_f 'pyproject.toml'

    venv = virtualenv_create(libexec, 'python3')

    resource('anymotion-sdk').stage do
      rm_f 'pyproject.toml'
      venv.pip_install Pathname.pwd
    end

    res = resources.map(&:name).to_set - %w[anymotion-sdk]
    res.each do |r|
      venv.pip_install resource(r)
    end

    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/amcli", '--version'
  end
end
