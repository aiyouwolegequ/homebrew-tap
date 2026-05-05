class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.3.2"

  url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.2/calctokens-macos-arm64",
    sha256: "57ed00c7e52db726004c1c77fb92c9423778d992cbac1d89c1abf335a29f4ece"

  def install
    src = staged_path/"calctokens-macos-arm64"
    dst = staged_path/"calctokens"
    FileUtils.mv src, dst
    bin.install dst
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
