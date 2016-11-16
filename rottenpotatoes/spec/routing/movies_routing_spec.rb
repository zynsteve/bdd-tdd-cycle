#- spec/routing/movies_routing_spec.rb
require 'spec_helper'

describe "routes for Movies" do
  it "does not route to find" do
    expect(:get => "/movies/find").not_to route_to(
                :controller => "movies",
                :action => "find", 
    )
  end
  
  it "is routable the find template" do
    expect(:get => "/movies/find/1").to route_to(
              :controller => "movies",
              :action => "find", 
              :id =>"1"
    )
  end
 
end