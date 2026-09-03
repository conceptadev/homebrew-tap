class Okfp < Formula
  desc "OKF profile validator for Concepta knowledge bundles"
  homepage "https://github.com/conceptadev/okf-profile"
  url "https://github.com/conceptadev/okf-profile/archive/v0.2.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "Apache-2.0"

  depends_on "dart"

  def install
    system "dart", "pub", "get"
    cd "packages/okf_profile" do
      system "dart", "compile", "exe", "bin/okfp.dart", "-o", "okfp"
      bin.install "okfp"
    end
  end

  test do
    assert_match "okfp", shell_output("#{bin}/okfp --version")
  end
end
