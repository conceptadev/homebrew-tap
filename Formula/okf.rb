class Okf < Formula
  desc "Format-first toolkit for Open Knowledge Format bundles"
  homepage "https://github.com/conceptadev/okf"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/conceptadev/okf/releases/download/v0.3.0/okf-macos-arm64"
      sha256 "0732185f13535a289bb85485c980d4ba3dbeee15f06df7e5912beb7ea8968a71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conceptadev/okf/releases/download/v0.3.0/okf-linux-x64"
      sha256 "e5567c860673fdd5c8b69be5701a7cc883576cc896a2f01bbda1c34d4f06d790"
    end
  end

  def install
    # Release assets are bare executables named for their platform; Homebrew
    # downloads them without extracting, so install the one file as "okf".
    bin.install Dir["okf-*"].fetch(0) => "okf"
  end

  test do
    assert_match "okf #{version}", shell_output("#{bin}/okf --version")
  end
end
