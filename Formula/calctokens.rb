class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.1.0/calctokens-macos-arm64"
      sha256 "use actual sha256 after upload"
    end
    on_intel do
      url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.1.0/calctokens-macos-x86_64"
      sha256 "use actual sha256 after upload"
    end
  end

  on_linux do
    on_x86_64 do
      url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.1.0/calctokens-linux-x86_64"
      sha256 "use actual sha256 after upload"
    end
    on_arm64 do
      url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.1.0/calctokens-linux-arm64"
      sha256 "use actual sha256 after upload"
    end
  end

  def install
    bin.install "calctokens"
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
