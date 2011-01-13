class InfoController < ApplicationController
  def about
    $about_views = 0 unless $about_views
    @time = Time.now
  end

  def probe
    $probe_views = 0 unless $probe_views
  end

  def profile
  end

end
