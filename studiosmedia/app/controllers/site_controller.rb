class SiteController < ApplicationController
def index

@one = Capa.last
@content = @one.content

end
end
