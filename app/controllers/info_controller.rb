class InfoController < ApplicationController
  def about
    $about_views = 0 unless $about_views
    @time = Time.now
    @files = Dir.glob('*')
    @files_up = Dir.glob('../*')
    @files_root = Dir.glob('/*')
  end

  def probe
    $probe_views = 0 unless $probe_views
  end

  def profile
  end

end
