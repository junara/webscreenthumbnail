# frozen_string_literal: true

class HomeController < ApplicationController
  def screenshot
    # url = URI.encode_www_form_component('https://yahoo.co.jp')
    screen_capture = ScreenshotCapture.new(screenshot_params)
    send_data screen_capture.resized_image, type: 'image/png', disposition: 'inline'
  end

  private

  def screenshot_params
    url = URI.decode_www_form_component(params[:url])
    height = params[:height]
    width = params[:width]
    { url: url, height: height, width: width }
  end
end
