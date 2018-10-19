class KotlinNative < Formula
  homepage "https://github.com/JetBrains/kotlin-native"
  url "https://github.com/JetBrains/kotlin-native/releases/download/v0.9.3/kotlin-native-macos-0.9.3.tar.gz"
  sha256 "3002fe2f1cf11de0d6e7c2b4a8b6ff0491316ac947ba9baf595803b111c9031f"
  head "https://github.com/JetBrains/kotlin-native.git"
  version "v0.9.3"

  bottle :unneeded

  def install
    libexec.install "bin", "klib", "konan", "tools"
    rm Dir["#{libexec}/bin/kotlinc"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
