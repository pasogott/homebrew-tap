class Frappecli < Formula
  desc "CLI tool for managing Frappe/ERPNext instances via REST API"
  homepage "https://github.com/pasogott/frappecli"
  license "MIT"

  # Install from HEAD (latest main branch)
  head "https://github.com/pasogott/frappecli.git", branch: "main"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    # Use uv to create a virtual environment and install the project
    system "uv", "venv", libexec, "--python", Formula["python@3.12"].opt_bin/"python3.12"
    system libexec/"bin/pip", "install", buildpath
    
    # Create wrapper that activates venv
    (bin/"frappecli").write_env_script libexec/"bin/frappecli",
      PATH: "#{libexec}/bin:$PATH"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/frappecli --help")
  end
end
