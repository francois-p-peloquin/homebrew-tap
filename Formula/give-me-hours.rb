class GiveMeHours < Formula
  desc "Track git commit hours across multiple repositories"
  homepage "https://github.com/francois-p-peloquin/give-me-hours"
  url "https://github.com/francois-p-peloquin/give-me-hours/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "a2e3f894961963b2d04fe5e3a8bd569af42efb8f802a828830111104e70086d7"
  license "MIT"
  version "1.0.1"

  depends_on "node"

  def install
    bin.install "give-me-hours"
  end

  def caveats
    <<~EOS
      Before using give-me-hours, install git-hours:
        npm install -g git-hours

      Set your git username if not already set:
        git config --global user.name "Your Name"
    EOS
  end

  test do
    system bin/"give-me-hours", "--help"
  end
end
