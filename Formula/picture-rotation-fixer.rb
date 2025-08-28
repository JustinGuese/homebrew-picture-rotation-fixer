class PictureRotationFixer < Formula
  desc "Effortlessly auto-rotate scanned photos to the correct orientation"
  homepage "https://github.com/JustinGuese/picture-rotation-fixer"
  version "0.0.5"

  on_macos do
    on_intel do
      url "https://github.com/JustinGuese/picture-rotation-fixer/releases/download/v0.0.5/picture-rotation-fixer-macos-x64"
      sha256 "e833230110d5bd12cdeac36222f04cf6b377740811db7feee7f72c491d51313a"
    end

    on_arm do
      url "https://github.com/JustinGuese/picture-rotation-fixer/releases/download/v0.0.5/picture-rotation-fixer-macos-arm64"
      sha256 "5a04d93eb90aec3b3ba24f1fb377c7941c205b50c55c534ed7f20de763db1aa7"
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
