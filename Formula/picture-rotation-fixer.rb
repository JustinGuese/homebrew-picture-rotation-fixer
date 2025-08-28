class PictureRotationFixer < Formula
  desc "Effortlessly auto-rotate scanned photos to the correct orientation"
  homepage "https://github.com/JustinGuese/picture-rotation-fixer"
  url "https://github.com/JustinGuese/picture-rotation-fixer/releases/download/v0.0.3/picture-rotation-fixer"
  sha256 "4c775c88b2bf12d323970382c1af4a6aa7caf355b5df90b92b787e877f5e19a2"

  def install
    chmod 0755, "picture-rotation-fixer"
    bin.install "picture-rotation-fixer"
  end

  test do
    system "#{bin}/picture-rotation-fixer", "--help"
  end
end
