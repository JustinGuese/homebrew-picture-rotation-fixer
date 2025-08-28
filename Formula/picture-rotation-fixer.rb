class PictureRotationFixer < Formula
  desc "Effortlessly auto-rotate scanned photos to the correct orientation"
  homepage "https://github.com/JustinGuese/picture-rotation-fixer"
  version "0.0.4"

  on_macos do
    on_intel do
      url "https://github.com/JustinGuese/picture-rotation-fixer/releases/download/v0.0.4/picture-rotation-fixer-macos-x64"
      sha256 "db203176841ebfc5b3babbd2e9de12d677454c5dc606472f4902079f74eeb8bb"
    end

    on_arm do
      url "https://github.com/JustinGuese/picture-rotation-fixer/releases/download/v0.0.4/picture-rotation-fixer-macos-arm64"
      sha256 "f24f1149358361b80568b845858ee5ae308942fd9e85191b9f33842d38c16dd1"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "picture-rotation-fixer-macos-x64" => "picture-rotation-fixer"
    else
      bin.install "picture-rotation-fixer-macos-arm64" => "picture-rotation-fixer"
    end
    chmod 0755, bin/"picture-rotation-fixer"
  end

  test do
    system "#{bin}/picture-rotation-fixer", "--help"
  end
end
