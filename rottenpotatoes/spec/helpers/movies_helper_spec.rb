#- spec/helpers/movies_helper_spec.rb
require "spec_helper"

describe MoviesHelper do
  describe "#oddness" do
    it "returns :odd" do
      oddness(1).should eql 'odd'
    end
    it "returns :eevn" do
      oddness(2).should eql 'even'
    end
  end
end