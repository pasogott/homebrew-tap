class Whcli < Formula
  desc "CLI for willhaben.at - Austria's largest classifieds marketplace"
  homepage "https://github.com/pasogott/whcli"
  url "https://github.com/pasogott/whcli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4547d1723cb8cc3e5107e9e0343a9f6b72af86e973e873c7196431db5b1acc89"
  license "MIT"

  # Install from HEAD for latest development version
  head "https://github.com/pasogott/whcli.git", branch: "main"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    # Use uv to create a virtual environment and install the project
    system "uv", "venv", libexec, "--python", Formula["python@3.12"].opt_bin/"python3.12"
    
    # Install the package using uv pip
    system "uv", "pip", "install", "--python", libexec/"bin/python", buildpath
    
    # Create wrapper that activates venv
    (bin/"whcli").write_env_script libexec/"bin/whcli",
      PATH: "#{libexec}/bin:$PATH"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/whcli --help")
  end
end
