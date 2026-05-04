class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.3.2"

  on_linux do
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.2/calctokens"
    sha256 "89bf5f1b217ac4d1661b9ce5757a48517a8281cfd1044b7b3d667b311264ae83"
  end

  on_macos do
    url "https://github.com/aiyouwolegequ/CalcTokens/archive/refs/tags/v0.3.2.tar.gz"
    sha256 "ad69e34479cf16869884e31d3c3f8ceb4deeecea97f909e671d1fd29deec3c15"
  end

  def install
    on_linux do
      bin.install "calctokens"
    end
    on_macos do
      raise "macOS/arm64: use 'cargo install --git https://github.com/aiyouwolegequ/CalcTokens --tag v0.3.2' instead"
    end
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
