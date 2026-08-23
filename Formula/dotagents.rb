class Dotagents < Formula
  desc "Sync skills, MCP servers, hooks, and roles across coding agents"
  homepage "https://github.com/yourconscience/dotagents"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yourconscience/dotagents/releases/download/v0.7.0/dotagents_0.7.0_darwin_arm64.tar.gz"
      sha256 "f5f0adc9e9cb2eab920448302b72b8a2e0130ae764cd3caa212608853e67b0e1"
    end
    on_intel do
      url "https://github.com/yourconscience/dotagents/releases/download/v0.7.0/dotagents_0.7.0_darwin_amd64.tar.gz"
      sha256 "6e6776fffcf286233ae0d1ee7e1df932434fd919e089b765ed1f78e89520a779"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yourconscience/dotagents/releases/download/v0.7.0/dotagents_0.7.0_linux_arm64.tar.gz"
      sha256 "a6bdd47bc12d4374cd32f2fff4a860bd621edfcb00ed7dc7daaf2e72cc1536f3"
    end
    on_intel do
      url "https://github.com/yourconscience/dotagents/releases/download/v0.7.0/dotagents_0.7.0_linux_amd64.tar.gz"
      sha256 "17d3fa7b2b885487c4a440d5768af3ae47be8e76bb3dd8232fa19e64bef3eaac"
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
