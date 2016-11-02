class Admin::BaseController < ApplicationController

  # Activate admin authentication
  http_basic_authenticate_with name: "revo", password: "14th"

  layout "admin"

end
