class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.0/calctokens-macos-arm64",
      sha256: "2272ae53c98ea940bb68e62f893d947939e11e1affb91cb51ee15dfdcd3c0721"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.0/calctokens",
      sha256: "a6690ff2478aa2672362463e17b64116cf090c9ccf6f9284ed7b5d98a030ff6c"
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
