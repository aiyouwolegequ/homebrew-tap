class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.0/calctokens-macos-arm64",
      sha256: "54719d3b38a0d8c46b0fe7891fd48e3da6ac05a66be0bb63a588168542693adb"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.0/calctokens",
      sha256: "3067721da3b483b43c4576fd4307b0caa8a881c4cded2444b16997b453374bfa"
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
