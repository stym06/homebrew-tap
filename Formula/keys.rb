class Keys < Formula
  desc "Manage API keys locally from the terminal"
  homepage "https://github.com/stym06/keys"
  url "https://github.com/stym06/keys/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e51b35a2d44b6f4c817a67967cae239e209d538ce2c3b1b9fa5e77f21e474707"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Manage API keys locally", shell_output("#{bin}/keys --help")
  end
end
