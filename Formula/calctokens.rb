class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.3.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.2/calctokens-macos-arm64",
      sha256: "57ed00c7e52db726004c1c77fb92c9423778d992cbac1d89c1abf335a29f4ece"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.2/calctokens",
      sha256: "89bf5f1b217ac4d1661b9ce5757a48517a8281cfd1044b7b3d667b311264ae83"
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
