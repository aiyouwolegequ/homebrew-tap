class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.6.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.1/calctokens-macos-arm64",
      sha256: "76dffc2f4684af3d31edaedc0c03339df4156b05791993a1b3773320c2240296"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.1/calctokens",
      sha256: "ddb7b99c150b6c4f643056329cfff09f605835e6405080a616ee54a9cfcebd61"
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
