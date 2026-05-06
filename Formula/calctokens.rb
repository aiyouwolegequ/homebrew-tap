class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.5.0/calctokens-macos-arm64",
      sha256: "ead8991b46e1257401c114590505b0a5bcbbf1703b18ede0b2b851c303fe9fbd"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.5.0/calctokens",
      sha256: "8a7b1e434152d69e7b108de7cb57349c78823aa87ad6962b6598f3e531c54f5e"
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
