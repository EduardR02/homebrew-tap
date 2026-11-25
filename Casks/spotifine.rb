cask "spotifine" do
  version "0.2.11"
  sha256 "bb9bf5c5ff17b2a4be55143b39fa6e106f8ecefdd2108c5070a386ef7cc97766"

  url "https://github.com/EduardR02/spotifine/releases/download/v#{version}/Spotifine-macos-arm64.zip",
      verified: "github.com/EduardR02/spotifine/"
  name "Spotifine"
  desc "Lightweight Spotify desktop client"
  homepage "https://eduardr02.github.io/spotifine/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  auto_updates true

  app "Spotifine.app"

  zap trash: [
    "~/Library/Application Support/Spotifine",
    "~/Library/Caches/com.spotifine.client",
    "~/Library/Preferences/com.spotifine.client.plist",
    "~/Library/WebKit/com.spotifine.client",
  ]
end