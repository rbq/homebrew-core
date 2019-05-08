class Kfctl < Formula
  desc "Kubeflow CLI tool"
  homepage "https://www.kubeflow.org"
  url "https://github.com/kubeflow/kubeflow/releases/download/v0.5.1/kfctl_v0.5.1_darwin.tar.gz"
  version "0.5.1"
  sha256 "37790a2bd02a27f94e97c550bc6743a8bdbf69751e78d9e968d018c3bf2bc503"
  head "https://github.com/kubeflow/kubeflow.git"

  bottle :unneeded

  depends_on "kubernetes-cli"

  def install
    bin.install "kfctl"
  end

  test do
    assert_match "v20181207", shell_output("#{bin}/kfctl version 2>&1")
  end
end
