def register_name
  visit '/'
  fill_in "Name", with: "Anjana"
  click_button "Submit"
end
