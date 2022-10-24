class Autoremap < Formula
  desc "MacOS keyboard remapping service"
  homepage "https://github.com/adigie/autoremap"
  url "https://github.com/adigie/autoremap.git", revision: "8e1ac43c5936bf92ed92c712f3a157ec8a95f492"
  version "0.1"

  depends_on "python@3.10"

  def install
    prefix.install "autoremap.py"
  end

  service do
    run [Formula["python@3.10"].opt_bin/"python3", opt_prefix/"autoremap.py", "--interval", "60"]
    keep_alive true
  end

  test do
    system "true"
  end
end
