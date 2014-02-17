module AutoLink
  HASHTAG_REGEX = /#[0-9A-Za-z_]+/
  MENTION_REGEX = /@[0-9A-Za-z_]+/

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def auto_link(target, options={})
      define_method "linked_#{options[:as] || target}" do
        result = self.send(target)
        matchers = Array(options[:on])

        if (matchers.include?(:mentions))
          result.gsub!(MENTION_REGEX) do |capture|
            "<a href='http://twitter.com/#{capture}'>#{capture}</a>"
          end
        end

        if (matchers.include?(:hashtags))
          result.gsub!(HASHTAG_REGEX) do |capture|
            "<a href='http://twitter.com/#{capture}'>#{capture}</a>"
          end
        end

        result
      end
    end
  end

end
