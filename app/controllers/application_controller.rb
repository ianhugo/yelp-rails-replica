class ApplicationController < ActionController::Base
  def cuisinehuh
    biglist = Cuisine.all
    render({ :plain =>  biglist.to_json })
  end

  def disheshuh
    biglist = Dish.all
    render({ :plain =>  biglist.to_json })
  end  

  def disheswot
    title = params.fetch(:dishid)
    piratebooty = Dish.where({ :id => title }).at(0)
    render({ :plain =>  piratebooty.to_json })
  end  

  def neighborwhere
    biglist = Neighborhood.all
    render({ :plain =>  biglist.to_json })
  end

  def venuewot
    biglist = Venue.all
    render({ :plain =>  biglist.to_json })
  end

  def userwot
    biglist = User.all
    render({ :plain =>  biglist.to_json })
  end

  def venuehuh
    title = params.fetch(:venueid)
    piratebooty = Venue.where({ :id => title }).at(0)
    render({ :plain =>  piratebooty.to_json })
  end

  def userhuh
    title = params.fetch(:userid)
    piratebooty = User.where({ :id => title }).at(0)
    render({ :plain =>  piratebooty.to_json })
  end


end
