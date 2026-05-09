class Calctokens < Formula
  desc "Token usage report powered by tokscale-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.7.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.7.0/calctokens-macos-arm64",
      tag: "v0.7.0"
    sha256 "f8229d30a242275bd4429766ce81fd5f3840f1b23d14af880fea22417f916523"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.7.0/calctokens",
      tag: "v0.7.0"
    sha256 "50e94be2426cd0e34ed8280d4bd964e7ec30f40cea31f255b3c588a01d3dbc80"
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
