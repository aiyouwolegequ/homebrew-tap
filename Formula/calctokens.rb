class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.4.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.2/calctokens-macos-arm64",
      sha256: "784166574f7d66b7e8c3bd32e7c951e4c9ccc7066638f4606c7fa25dc22bda91"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.3/calctokens",
      sha256: "79bec80d4f8c74fdb351c5b3fe8ef21e63adb8f6f85736063097e7194187b5d8"
  end

  def install
    bin.install cached_download
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
