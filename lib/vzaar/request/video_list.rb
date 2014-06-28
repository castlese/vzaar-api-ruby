module Vzaar
  module Request
    class VideoList < Base
      endpoint { |o| "/api/#{o.login}/videos" }
      resource "VideoCollection"

      def url_params
        Rails.logger.info options[:title]
        super.merge({ page: options[:page] || 1, title: options[:title] })
      end

      def login
        options[:login]
      end
    end
  end
end
