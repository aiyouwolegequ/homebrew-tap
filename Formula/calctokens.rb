class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.3.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.3/calctokens-macos-arm64",
      sha256: "d48e2769f73d5d4aa1f663766deabc34dfc5082bf7b301204991ee13bffb34e7"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.3/calctokens",
      sha256: "c24a93e719439a0c708f41a8afa01d63facfb9a2b72b5c93517d862c59e08587"
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
