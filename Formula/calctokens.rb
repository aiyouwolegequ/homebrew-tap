class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.1.0/calctokens"
      sha256 "e4bc52258875002590e8e5e06ae20623f6e2f8af02906d0882cb94c4d59ba7af"
    end
  end

  def install
    bin.install "calctokens"
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
