class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.7.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.7.2/calctokens-macos-arm64",
      tag: "v0.7.2"
    sha256 "7210bda0c24ac4cb702d3fb79bed722ef431ca93cb91ac73d3bef70f1334fd29"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.7.2/calctokens",
      tag: "v0.7.2"
    sha256 "8ef0f85c82eda0b3428015544a7011622f27d4386a418eb6be933fe1c340c8b4"
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
