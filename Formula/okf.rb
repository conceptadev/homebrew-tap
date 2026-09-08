class Okf < Formula
  desc "Open Knowledge Format engine: validate, format, index, graph, and serve bundles over MCP"
  homepage "https://github.com/conceptadev/okf"
  url "https://pub.dev/api/archives/okf-0.3.0.tar.gz"
  sha256 "6b5b8b5ca7bd71b680882326e676a53849b7c4a22b24cbf681830472698be5db"
  license "Apache-2.0"

  depends_on "dart-sdk" => :build

  def install
    ENV["PUB_CACHE"] = buildpath/".pub-cache"
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/okf.dart", "-o", "okf"
    bin.install "okf"
  end

  test do
    assert_match "okf", shell_output("#{bin}/okf --version")
  end
end
