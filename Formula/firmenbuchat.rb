class Firmenbuchat < Formula
  desc "CLI for the Austrian company register (Firmenbuch)"
  homepage "https://github.com/pasogott/firmenbuch-aip"
  url "https://github.com/pasogott/firmenbuch-aip/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "f3457017b8eee70bed9186878d06b8d34f83f74d06ed5bd5acea22f357d4262b"
  license "MIT"

  head "https://github.com/pasogott/firmenbuch-aip.git", branch: "main"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    ENV["UV_PROJECT_ENVIRONMENT"] = libexec

    system "uv", "sync", "--project", buildpath,
      "--python", Formula["python@3.12"].opt_bin/"python3.12",
      "--no-dev", "--no-editable"

    (bin/"firmenbuchat").write_env_script libexec/"bin/firmenbuchat",
      PATH: "#{libexec}/bin:$PATH"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/firmenbuchat --help")
  end
end
