class Okfp < Formula
  desc "OKF profile validator for Concepta knowledge bundles"
  homepage "https://github.com/conceptadev/okf-profile"
  url "https://pub.dev/api/archives/okf_profile-0.2.0.tar.gz"
  sha256 "57f33a9e3d87ba550b1b079139e04c9351df62ffad567629062629bb2fbed608"
  license "Apache-2.0"

  depends_on "dart-sdk" => :build

  def install
    # The published archive is a Dart workspace member; drop the workspace
    # resolution so it can resolve on its own.
    inreplace "pubspec.yaml", /^resolution: workspace\n/, ""

    ENV["PUB_CACHE"] = buildpath/".pub-cache"
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/okfp.dart", "-o", "okfp"
    bin.install "okfp"
  end

  test do
    assert_match "okfp", shell_output("#{bin}/okfp --version")
  end
end
