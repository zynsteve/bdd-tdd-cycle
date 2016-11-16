Given(/^the following movies exist:$/) do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create(title: movie[:title], rating: movie[:rating], director: movie[:director], release_date: movie[:release_date])
  end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  if page.body.respond_to? :should
    page.body.should have_xpath("//h2", :text => "Details about #{arg1}") 
    page.body.should have_xpath("//li", :text => "#{arg2}") 
  else
    assert page.body.has_xpath?("//h2", :text => "Details about #{arg1}") 
    assert page.body.has_xpath?("//li", :text => "#{arg2}")
  end
end