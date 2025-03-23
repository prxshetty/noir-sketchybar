class Sketchybar < Formula
  desc "A customizable macOS menu bar replacement (Forked)"
  homepage "https://github.com/prxshetty/SketchyBar"
  head "https://github.com/prxshetty/SketchyBar.git", branch: "main"

  depends_on "cmake" => :build

  def install
    system "make"
    bin.install "sketchybar"
  end

  service do
    run [opt_bin/"sketchybar"]
    keep_alive true
    require_root false
  end
end

