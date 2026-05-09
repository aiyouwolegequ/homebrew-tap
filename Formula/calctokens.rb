class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.7.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.4/calctokens-macos-arm64",
      sha256: "c0fc641d2ca52e21766c02b255140313fb67887cfcba313c831f419cd3f2e8e0"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.4/calctokens",
      sha256: "a289e12d235c535f467042b4584390631ba6b8949511127938da4d7c4cdb55e7"
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
