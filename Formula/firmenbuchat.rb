class Firmenbuchat < Formula
  desc "CLI for the Austrian company register (Firmenbuch)"
  homepage "https://github.com/pasogott/firmenbuch-aip"
  url "https://github.com/pasogott/firmenbuch-aip/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "9512b25bd3dca6eb0a28e30af7bd2f24c8efb235e374f0a2c78801bca5cf93ce"
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
