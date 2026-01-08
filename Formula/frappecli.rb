class Frappecli < Formula
  desc "CLI tool for managing Frappe/ERPNext instances via REST API"
  homepage "https://github.com/pasogott/frappecli"
  url "https://github.com/pasogott/frappecli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c5e5f6c21e26c6a90d3bd2eaf85d8f7203bbd24b757f944a139047083b4a89bc"
  license "MIT"

  # Install from HEAD for latest development version
  head "https://github.com/pasogott/frappecli.git", branch: "main"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    # Use uv to create a virtual environment and install the project
    system "uv", "venv", libexec, "--python", Formula["python@3.12"].opt_bin/"python3.12"
    
    # Install the package using uv pip
    system "uv", "pip", "install", "--python", libexec/"bin/python", buildpath
    
    # Create wrapper that activates venv
    (bin/"frappecli").write_env_script libexec/"bin/frappecli",
      PATH: "#{libexec}/bin:$PATH"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/frappecli --help")
  end
end
