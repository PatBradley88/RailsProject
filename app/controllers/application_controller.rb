class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern

  before_action :set_title

  def set_title
  	@page_title = "DevPortfolio | My Portfolio Website"
  end
end
