class Kafkadumper < Formula
  desc "CLI tool to create snapshots of Kafka topics at a specific point in time"
  homepage "https://github.com/outscale/KafkaDumper"
  version "0.2.7"
  license "BSD-3-Clause"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/outscale/KafkaDumper/releases/download/v#{version}/kafkadumper-macos-arm64"
      sha256 "ad9513b9258105a1d51ed91ac17eee9f14923e6fa7c8493f298923ae2be5c813"
    else
      url "https://github.com/outscale/KafkaDumper/releases/download/v#{version}/kafkadumper-macos-x86_64"
      sha256 "32bf11e8418fa23403addd647ed6493c0b15da54a0803e3d3deae74782d8f168"
    end
  elsif OS.linux?
    url "https://github.com/outscale/KafkaDumper/releases/download/v#{version}/kafkadumper-linux-x86_64"
    sha256 "62959463f15d33c47225bb2b18706b727448fdfc2582f32d807347de8b8edf0e"
  end

  def install
    bin.install Dir["kafkadumper-*"].first => "kafkadumper"
  end

  test do
    system "#{bin}/kafkadumper", "--version"
  end
end
