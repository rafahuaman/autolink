module AutoLink

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def auto_link(target, options={})
      define_method "linked_#{target}" do
        self.send(target).gsub(/@[0-9A-Za-z_]+/) do |capture|
          "<a href='#{capture}'>#{capture}</a>"
        end
      end
    end
  end

end
