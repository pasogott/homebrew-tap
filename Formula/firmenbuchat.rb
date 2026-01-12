class Firmenbuchat < Formula
  desc "CLI for the Austrian company register (Firmenbuch)"
  homepage "https://github.com/pasogott/firmenbuch-aip"
  url "https://github.com/pasogott/firmenbuch-aip/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6373dda0747368ccbab8db645f531fb2f8ebb308142d1f580d2366988151f17c"
  license "MIT"

  head "https://github.com/pasogott/firmenbuch-aip.git", branch: "main"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    system "uv", "venv", libexec, "--python", Formula["python@3.12"].opt_bin/"python3.12"

    ENV["VIRTUAL_ENV"] = libexec
    ENV["PATH"] = "#{libexec}/bin:#{ENV["PATH"]}"

    system "uv", "sync", "--project", buildpath, "--active", "--no-dev", "--no-editable"

    (bin/"firmenbuchat").write_env_script libexec/"bin/firmenbuchat",
      PATH: "#{libexec}/bin:$PATH"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/firmenbuchat --help")
  end
end
