class Dblinter < Formula
  desc "Static code analysis and SQL-based testing for APEXlang, PL/SQL, PL/pgSQL and SQL"
  homepage "https://grisselbav.github.io/dbLinter/"
  url "https://github.com/Grisselbav/dbLinter/releases/download/v1.9.0/dblinter-1.9.0.zip"
  sha256 "33be44832b6100babab273bb51572c0c12d35c505072752ff12f579cf3851f79"
  version "1.9.0"

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
