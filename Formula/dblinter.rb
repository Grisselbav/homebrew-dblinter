class Dblinter < Formula
  desc "Code analysis and SQL-based testing for APEXlang, PL/SQL, PL/pgSQL and SQL"
  homepage "https://grisselbav.github.io/dbLinter/"
  url "https://github.com/Grisselbav/dbLinter/releases/download/v1.11.0/dblinter-1.11.0.zip"
  sha256 "5c89bacb81acecbfe4ff8e957e1c94763e031cc3f3991c0a769a2fa2d63ecabd"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/Grisselbav/homebrew-dblinter/releases/download/dblinter-1.11.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "2422f7db1c13e2edffff94bff38d9dfe86703552fabc6da724608117564b8e7d"
  end

  def install
    libexec.install Dir["*"]
    (bin/"dblinter").write_env_script libexec/"dblinter", {}
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dblinter version")
  end
end
