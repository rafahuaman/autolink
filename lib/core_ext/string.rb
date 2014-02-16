class String

  def linked
    self.gsub(/@[0-9A-Za-z_]+/) do |capture|
      "<a href='#{capture}'>#{capture}</a>"
    end
  end

end
