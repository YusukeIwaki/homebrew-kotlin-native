class KotlinNative < Formula
  homepage "https://github.com/JetBrains/kotlin-native"
  url "https://github.com/JetBrains/kotlin/releases/download/v1.3.11/kotlin-native-macos-1.3.11.tar.gz"
  sha256 "0813985e9cabf2393cf3396e5eb08a4b4bb21ed14e838a8b9e56b2809e89d284"
  head "https://github.com/JetBrains/kotlin-native.git"
  version "v1.3.11"

  bottle :unneeded

  def install
    libexec.install "bin", "klib", "konan", "tools"
    rm Dir["#{libexec}/bin/kotlinc"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
