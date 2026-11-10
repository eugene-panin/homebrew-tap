class Kctx < Formula
  desc "Kubernetes context switcher with client grouping and a TUI"
  homepage "https://github.com/eugene-panin/kctx"
  head "https://github.com/eugene-panin/kctx.git", branch: "main"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/kctx"
    generate_completions_from_executable(bin/"kctx", "completion")
  end

  test do
    assert_match "kctx", shell_output("#{bin}/kctx --help")
  end
end
