# Add a declarative step here for populating the DB with movies.

Given /the following workers exist/ do |workers_table|
  workers_table.hashes.each do |workers|
  Worker.create!(workers)
  end
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  heads = page.all("table#workers tbody tr td[1]").map{|t| t.text}
  assert heads.index(e1) < heads.index(e2)
end

# Make it easier to express checking or unchecking several boxes at once
When /^(?:|I )check the "([^"]")" skills$/ do |field|
  check('skills_list_' + field)
end

When /^(?:|I )uncheck the "([^"]")" skills$/ do |field|
  uncheck('skills_list_' + field)
end

#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"
When /I (un)?check the following skills: (.*)/ do |uncheck, skills_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  list = skills_list.split(",")
  if uncheck   
    list.each do |x|
      x.strip! # removing whitespaces, because they give an error otherwise.
      When %{I uncheck "skills_#{x}"}
    end
  else
    list.each do |x|
      x.strip!
       When %{I check "skills_#{x}"}
    end
  end

  # flunk "Unimplemented"
end
# HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb


Then /I should see all the workers/ do
  # Make sure that all the movies in the app are visible in the table
    rows = page.all("table#workers tbody tr td[1]").map{|t| t.text}
  assert rows.size == Worker.all.count
end
