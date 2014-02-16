module LinkedBody

  def linked_body
    body_attribute = self.class.body_attribute

    self.send(self.class.body_attribute).gsub(/@[0-9A-Za-z_]+/) do |capture|
      "<a href='#{capture}'>#{capture}</a>"
    end
  end

end
