class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.3.2"

  url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.2/calctokens-macos-arm64"
  sha256 "57ed00c7e52db726004c1c77fb92c9423778d992cbac1d89c1abf335a29f4ece"

  def install
    prefix.bin.install "calctokens-macos-arm64" => "calctokens"
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
