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
    # Find the downloaded binary in staging (might have release-asset filename)
    cached_file = staged_path.children.find { |f| f.file? && f.basename.to_s.match?(/calctokens/) }
    raise "calctokens binary not found in staging" unless cached_file

    # Rename to expected name if needed
    if cached_file.basename.to_s != "calctokens"
      FileUtils.cp cached_file, staged_path/"calctokens"
    end

    bin.install staged_path/"calctokens"
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
