class Databow < Formula
  desc "Command-line tool for querying databases via ADBC"
  homepage "https://docs.columnar.tech/databow/"
  url "https://github.com/columnar-tech/databow/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "97d437123a15cd3e23696780dd05cf74856a2acd4d18788b85cb6841bd63915d"
  license "Apache-2.0"
  head "https://github.com/columnar-tech/databow.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/databow --version")
  end
end
