class StaticPageController < ApplicationController
   layout 'application', except: :home
end
