class Dotagents < Formula
  desc "Sync skills, MCP servers, hooks, and roles across coding agents"
  homepage "https://github.com/yourconscience/dotagents"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yourconscience/dotagents/releases/download/v0.4.0/dotagents_0.4.0_darwin_arm64.tar.gz"
      sha256 "3152372ba6c376ce3637bba3347fc2602460c005da04ecebaa038a607e156e11"
    end
    on_intel do
      url "https://github.com/yourconscience/dotagents/releases/download/v0.4.0/dotagents_0.4.0_darwin_amd64.tar.gz"
      sha256 "46eda943dd488b0b41a21c3665f8ab9b42a907dc03a2dca1cf10c3797045966e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yourconscience/dotagents/releases/download/v0.4.0/dotagents_0.4.0_linux_arm64.tar.gz"
      sha256 "02d36a2ab4a482c17704d3dd1d784a7903f3e20bc88e5cfc4d14c940af4639fd"
    end
    on_intel do
      url "https://github.com/yourconscience/dotagents/releases/download/v0.4.0/dotagents_0.4.0_linux_amd64.tar.gz"
      sha256 "b16178309f4f797c61d939cbf1338653eb5ceff90070b40fceb8002560e4e860"
    end
  end

  def install
    bin.install "dotagents"
  end

  test do
    output = shell_output("#{bin}/dotagents help")
    assert_match "manage shared skills and MCP config across coding agents", output
  end
end
