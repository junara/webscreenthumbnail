# frozen_string_literal: true

module ApplicationHelper
  def mail_body
    "web screenshot thumbnail\n\n#{request.url}"
  end

  def share_line
    "https://line.me/R/msg/text/?#{CGI.escape("web screenshot thumbnail\n#{request.url}")}"
  end

  def share_twitter
    "https://twitter.com/intent/tweet?url=#{request.url}&text=#{CGI.escape("web screenshot thumbnail\n")}&hashtags="
  end

  def share_facebook
    "https://www.facebook.com/sharer/sharer.php?u=#{request.url}"
  end
end
