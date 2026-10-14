class Databow < Formula
  desc "Command-line tool for querying databases via ADBC"
  homepage "https://docs.columnar.tech/databow/"
  url "https://github.com/columnar-tech/databow/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3794948bf83a284e5cad7038ba0205a3fa81053ec47ce6dcc18a2ac97e4be918"
  license "Apache-2.0"
  head "https://github.com/columnar-tech/databow.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/databow --version")
  end
end
