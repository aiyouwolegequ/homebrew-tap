class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.6.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.2/calctokens-macos-arm64",
      sha256: "dd386f87a116a9fe0a3b4aa57877e735f9076168f48857db57d2618e74a65162"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.2/calctokens",
      sha256: "3d2cd16604ee02c5679bea9d73e1b8ee4b94fac1fb4d777d04d859d17fbc14ca"
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
