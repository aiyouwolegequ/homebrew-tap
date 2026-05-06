class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.4.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.2/calctokens-macos-arm64",
      sha256: "784166574f7d66b7e8c3bd32e7c951e4c9ccc7066638f4606c7fa25dc22bda91"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.2/calctokens",
      sha256: "86423a888a526e354263964a6520cba9850802572384be9f9b8377f10da8e915"
  end

  def install
    bin_path = Pathname.new(prefix)/"bin"/"calctokens"
    bin_path.parent.mkpath
    FileUtils.cp(cached_download, bin_path)
    bin_path.chmod(0755)
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
