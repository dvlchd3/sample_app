#def full_title(page_title)
#  base_title = "Ruby on Rails Tutorial Sample App"
#  return base_title if page_title.empty?
#  return "#{base_title} | #{page_title}"
#end

include ApplicationHelper

def valid_signin(user)
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
end

RSpec::Matchers.define :have_error_messages do |message|
  match do |page|
    page.should have_selector 'div.alert.alert-error', text: message
  end
end