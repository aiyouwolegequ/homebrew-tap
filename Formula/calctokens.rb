class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.3.2"

  url "https://github.com/aiyouwolegequ/CalcTokens/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "ad69e34479cf16869884e31d3c3f8ceb4deeecea97f909e671d1fd29deec3c15"

  def install
    system "/opt/homebrew/bin/cargo", "build", "--release", "--locked"
    bin.install "target/release/calctokens"
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
