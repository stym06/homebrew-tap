class Keys < Formula
  desc "Manage API keys locally from the terminal"
  homepage "https://github.com/stym06/keys"
  url "https://github.com/stym06/keys/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "0f1e9b22227eec0aa6c9dbd1de523b59f416fec100b9de63b10796a82711eb0e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Manage API keys locally", shell_output("#{bin}/keys --help")
  end
end
