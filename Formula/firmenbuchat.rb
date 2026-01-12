class Firmenbuchat < Formula
  desc "CLI for the Austrian company register (Firmenbuch)"
  homepage "https://github.com/pasogott/firmenbuch-aip"
  url "https://github.com/pasogott/firmenbuch-aip/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  head "https://github.com/pasogott/firmenbuch-aip.git", branch: "main"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    system "uv", "venv", libexec, "--python", Formula["python@3.12"].opt_bin/"python3.12"
    system "uv", "pip", "install", "--python", libexec/"bin/python", buildpath

    (bin/"firmenbuchat").write_env_script libexec/"bin/firmenbuchat",
      PATH: "#{libexec}/bin:$PATH"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/firmenbuchat --help")
  end
end
