class SiteController < ApplicationController

  def home
  end
  def calendar
    @events = Event.where(featured: true)
    puts "\n\n\n\n\n\n\n\n\n\n"
    @months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    @now = DateTime.now
    puts "\n\n\n\n\n\n\n\n\n\n"
  end

end
