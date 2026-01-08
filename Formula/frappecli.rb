class Frappecli < Formula
  desc "CLI tool for managing Frappe/ERPNext instances via REST API"
  homepage "https://github.com/pasogott/frappecli"
  url "https://github.com/pasogott/frappecli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7c7cf77c53f8e0432203aae5a5cc26d7ab4b4b6081738e99f3c82294fd02050a"
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
