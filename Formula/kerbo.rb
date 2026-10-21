class Kerbo < Formula
  desc "Analizador de calidad multi-lenguaje"
  homepage "https://kerbo.matiascaliz.com.ar"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/mati-caliz/kerbo/releases/download/v#{version}/kerbo-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3cab4e1ce3b44575c74d026b6432dd8ce5c69a6ac10ade8d3ccc73bc4f9f950f"
    end
    on_intel do
      url "https://github.com/mati-caliz/kerbo/releases/download/v#{version}/kerbo-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "23539dceafeb92ea9f71d0594e73cd17dfbb0fac3b41c8585b1e9b04394ae0db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mati-caliz/kerbo/releases/download/v#{version}/kerbo-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2002d136cf024f926906c74b53026685696c37472644156d09b40b1a0f1fc111"
    end
    on_intel do
      url "https://github.com/mati-caliz/kerbo/releases/download/v#{version}/kerbo-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acba63b3701c8014e62fab804ed476852d83aeb97c7fc0731f8a80f7c7baeb05"
    end
  end

  def install
    bin.install "kerbo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kerbo --version")
  end
end
