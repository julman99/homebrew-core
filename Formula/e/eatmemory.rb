class Eatmemory < Formula
  desc "Simple program to allocate memory from the command-line"
  homepage "https://github.com/julman99/eatmemory"
  url "https://github.com/julman99/eatmemory/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "1d2bc0976762a01f554948a3c728bc52cb639aa4d5dbba1421fc3677f042c23f"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    output = shell_output "#{bin}/eatmemory -?"
    version_escaped = version.to_s.gsub(/\./, '\.')
    assert_match %r{^eatmemory #{version_escaped} - https://github.com/julman99/eatmemory\n.*}, output
  end
end
