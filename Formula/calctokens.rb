class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.7.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.7.3/calctokens-macos-arm64",
      tag: "v0.7.3"
    sha256 "219e5e3445fa153e83b971d38c13df5bed64793cc9acd16add5c757ec6f36ee9"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.7.3/calctokens",
      tag: "v0.7.3"
    sha256 "7f69a3b9e005c387ba234576945b76c55d809c13297d9da45ce073692bb3a858"
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
