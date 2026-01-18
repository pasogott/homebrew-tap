class Gurkerlcli < Formula
  desc "CLI for gurkerl.at online grocery shopping (Austria)"
  homepage "https://github.com/pasogott/gurkerlcli"
  url "https://github.com/pasogott/gurkerlcli/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "e2562c0d6f76a27dfa7dffafffc78fa88b14ac2cfca8383b41bdc54d80802e96"
  license "MIT"

  # Install from HEAD for latest development version
  head "https://github.com/pasogott/gurkerlcli.git", branch: "main"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    # Use uv to create a virtual environment and install the project
    system "uv", "venv", libexec, "--python", Formula["python@3.12"].opt_bin/"python3.12"
    
    # Install the package using uv pip
    system "uv", "pip", "install", "--python", libexec/"bin/python", buildpath
    
    # Create wrapper that activates venv
    (bin/"gurkerlcli").write_env_script libexec/"bin/gurkerlcli",
      PATH: "#{libexec}/bin:$PATH"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/gurkerlcli --help")
  end
end
