class Dblinter < Formula
  desc "Code analysis and SQL-based testing for APEXlang, PL/SQL, PL/pgSQL and SQL"
  homepage "https://grisselbav.github.io/dbLinter/"
  url "https://github.com/Grisselbav/dbLinter/releases/download/v1.13.0/dblinter-1.13.0.zip"
  sha256 "63239498349b22220228868124a7c546af9ce476c837cd06f34f204f68c861c6"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/Grisselbav/homebrew-dblinter/releases/download/dblinter-1.12.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "8fbe75bca0108f2fc11bc7de9764aad47f9119c89b3afcef5c2eda15d59a0b8a"
  end

  def install
    libexec.install Dir["*"]
    (bin/"dblinter").write_env_script libexec/"dblinter", {}
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dblinter version")
  end
end
