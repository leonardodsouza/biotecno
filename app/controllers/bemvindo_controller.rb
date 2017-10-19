class BemvindoController < ApplicationController
    def index
        @backgound_7 = Banner.find(7)
    end
end
