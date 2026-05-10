class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.7.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.7.1/calctokens-macos-arm64",
      tag: "v0.7.1"
    sha256 "a14c71524654b292578a67ae2522c58d8cddd0ddb3b41e52aebba2813479fa86"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.7.1/calctokens",
      tag: "v0.7.1"
    sha256 "418cd73363a968022d34e61485a416b1f6a57029580ebe52f876889bebe5b1aa"
  end

  def install
    target = bin/"calctokens"
    bin.mkpath
    rm_f target
    FileUtils.cp(cached_download, target)
    chmod(0755, target)
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
