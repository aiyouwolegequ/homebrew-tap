class Calctokens < Formula
  desc "Token usage report from Tokscale with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.2/calctokens-macos-arm64"
      sha256 "57ed00c7e52db726004c1c77fb92c9423778d992cbac1d89c1abf335a29f4ece"
    end
  end

  on_linux do
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.3.2/calctokens"
    sha256 "89bf5f1b217ac4d1661b9ce5757a48517a8281cfd1044b7b3d667b311264ae83"
  end

  def install
    puts "DEBUG: cached_download=#{cached_download}"
    puts "DEBUG: cached_download.exist?=#{cached_download.exist?}"
    puts "DEBUG: bin=#{bin}"
    puts "DEBUG: staged_path=#{staged_path}"
    puts "DEBUG: staged_path.children=#{staged_path.children.inspect}"
    dst = bin/"calctokens"
    puts "DEBUG: dst=#{dst}"
    FileUtils.cp(cached_download, dst)
    dst.chmod(0755)
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
