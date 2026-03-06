class Keys < Formula
  desc "Manage API keys locally from the terminal"
  homepage "https://github.com/stym06/keys"
  url "https://github.com/stym06/keys/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "969051e2af0f0604da6aeb1976143968c9f401d0cbc0726a32a027d09c1dc2e7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Manage API keys locally", shell_output("#{bin}/keys --help")
  end
end
