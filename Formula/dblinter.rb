class Dblinter < Formula
  desc "Code analysis and SQL-based testing for APEXlang, PL/SQL, PL/pgSQL and SQL"
  homepage "https://grisselbav.github.io/dbLinter/"
  url "https://github.com/Grisselbav/dbLinter/releases/download/v1.10.0/dblinter-1.10.0.zip"
  sha256 "1debd3957b9fe1c53238fdfe3be61c030a1fcb975fbc233ba3f55f4b32cf8995"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/Grisselbav/homebrew-dblinter/releases/download/dblinter-1.10.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "8537e87f2dbe97ca5e970bda23aecc001cae012c21fb7d1da9ff4cf82069236a"
  end

  def install
    libexec.install Dir["*"]
    (bin/"dblinter").write_env_script libexec/"dblinter", {}
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dblinter version")
  end
end
