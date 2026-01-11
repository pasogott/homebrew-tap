class Whcli < Formula
  desc "CLI for willhaben.at - Austria's largest classifieds marketplace"
  homepage "https://github.com/pasogott/whcli"
  url "https://github.com/pasogott/whcli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
