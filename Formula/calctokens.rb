class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.4.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.5/calctokens-macos-arm64",
      sha256: "18a14ee366290fed3338ecb1993475eeb81905a66713781cffa1e373e193b88f"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.5/calctokens",
      sha256: "79bec80d4f8c74fdb351c5b3fe8ef21e63adb8f6f85736063097e7194187b5d8"
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
