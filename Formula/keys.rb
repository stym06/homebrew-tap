class Keys < Formula
  desc "Manage API keys locally from the terminal"
  homepage "https://github.com/stym06/keys"
  url "https://github.com/stym06/keys/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "471d8ce388ebbea0a08babe2fba3eaaedc68a1030556ae32f1b237b2bb86ee78"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Manage API keys locally", shell_output("#{bin}/keys --help")
  end
end
