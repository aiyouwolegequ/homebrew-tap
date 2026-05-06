class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.4.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.1/calctokens-macos-arm64",
      sha256: "56812ed2af292da2af3cab42732219d7fca15a50ff16a5c73a135911ce6d4953"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.4.1/calctokens",
      sha256: "c0e7a9f1b94f936f55bb70bbd3585696846fb9c6a5539dcc00114864e1d1bd8f"
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
