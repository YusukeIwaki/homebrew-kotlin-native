class KotlinNative < Formula
  homepage "https://github.com/JetBrains/kotlin-native"
  url "https://github.com/JetBrains/kotlin/releases/download/v1.3.30/kotlin-native-macos-1.3.30.tar.gz"
  sha256 "787798edf0a6a76b4a8a07fa5d878dabb324b7a3cd3c87fa849a8772627a6a22"
  head "https://github.com/JetBrains/kotlin-native.git"
  version "v1.3.30"

  bottle :unneeded

  def install
    libexec.install "bin", "klib", "konan", "tools"
    rm Dir["#{libexec}/bin/kotlinc"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
