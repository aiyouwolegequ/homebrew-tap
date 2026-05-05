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
    puts "DEBUG: install running, staged_path=#{staged_path}"
    puts "DEBUG: contents: #{Dir.foreach(staged_path) { |f| puts f }.to_a}"
    super
  end

  def post_install
    puts "DEBUG: post_install running"
    puts "DEBUG: bin contents: #{File.join(bin, 'calctokens')}"
  end
end
