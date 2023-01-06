class Staticsitegenerator < Formula
  desc "StaticSiteGenerator"
  homepage "https://github.com/mrnickel/StaticSiteGenerator"
  url "https://github.com/mrnickel/StaticSiteGenerator/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "8752a8cc13cf942b511818457cece7f8ac1325b0f778f95a99b640ba9f1c902c"
  license "Apache-2.0"

  depends_on "go@1.19" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

end
