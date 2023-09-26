Rails.application.routes.draw do
  get("/", { :controller => "dice_game", :action => "home" })
  get("/dice/:number_of_dice/:how_many_sides", { :controller => "dice_game", :action => "play_any_dice"})

end
