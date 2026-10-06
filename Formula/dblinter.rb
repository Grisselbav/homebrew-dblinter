class Dblinter < Formula
  desc "Code analysis and SQL-based testing for APEXlang, PL/SQL, PL/pgSQL and SQL"
  homepage "https://grisselbav.github.io/dbLinter/"
  url "https://github.com/Grisselbav/dbLinter/releases/download/v1.11.0/dblinter-1.11.0.zip"
  sha256 "5c89bacb81acecbfe4ff8e957e1c94763e031cc3f3991c0a769a2fa2d63ecabd"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install Dir["*"]
    (bin/"dblinter").write_env_script libexec/"dblinter", {}
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dblinter version")
  end
end
