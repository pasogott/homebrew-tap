class Gurkerlcli < Formula
  desc "CLI for gurkerl.at online grocery shopping (Austria)"
  homepage "https://github.com/pasogott/gurkerlcli"
  url "https://github.com/pasogott/gurkerlcli/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "b9f2024cce8970e160834a8de6deb24f7b1746c84d6979c5d8eacf780a4417e6"
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
