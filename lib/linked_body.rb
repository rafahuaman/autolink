module LinkedBody
  def linked_body
    self.body.gsub(/@[0-9A-Za-z_]+/) do |capture|
      "<a href='#{capture}'>#{capture}</a>"
    end
  end

  def linked_caption
    self.caption.gsub(/@[0-9A-Za-z_]+/) do |capture|
      "<a href='#{capture}'>#{capture}</a>"
    end
  end
end
