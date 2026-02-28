class Keys < Formula
  desc "Manage API keys locally from the terminal"
  homepage "https://github.com/stym06/keys"
  url "https://github.com/stym06/keys/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1718c075aebfb7d0a5c190850b87f60b0e9a1040704c29d47621129e548d7741"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Manage API keys locally", shell_output("#{bin}/keys --help")
  end
end
