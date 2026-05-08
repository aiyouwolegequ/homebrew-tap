class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.6.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.3/calctokens-macos-arm64",
      sha256: "9db713e9aae17196ce53100c0cbdfeba387128790ce99b1b58446ff0bd7afa09"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.6.3/calctokens",
      sha256: "2fe35f072b3e4952bc1c26393dd8d382da86d596c88dc2eaf6bb2f64d19c3048"
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
