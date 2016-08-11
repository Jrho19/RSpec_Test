require 'rails_helper'

RSpec.feature "UserViewsTheirProfiles", type: :feature do
  let!(:user) do
    User.create(
      name: "Rho The Kidd",
      email: "rho@kidd.com",
      code_school: CodeSchool.create(name: 'Wyncode')
    )
  end

  it "displays their name" do
    visit user_path(user)
    expect(page).to have_content user.name
  end
end
