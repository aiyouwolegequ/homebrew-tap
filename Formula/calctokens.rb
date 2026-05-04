class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.2/calctokens"
      sha256 "89bf5f1b217ac4d1661b9ce5757a48517a8281cfd1044b7b3d667b311264ae83"
    end
  end

  def install
    bin.install "calctokens"
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
