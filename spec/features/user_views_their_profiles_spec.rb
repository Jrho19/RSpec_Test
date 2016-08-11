require 'rails_helper'

RSpec.feature "UserViewsTheirProfiles", type: :feature do
  let!(:user) do
    User.create(
      name: "Rho The Kidd",
      email: "rho@kidd.com",
      code_school: CodeSchool.create(name: 'Wyncode')
    )
  end

  before do
    visit user_path(user)
  end

  it "displays their name" do
    expect(page).to have_content user.name
  end

  it "displays their email" do
    expect(page).to have_content user.email
  end

  it "displays their code school" do
    save_and_open_page
    expect(page).to have_content user.code_school
  end
end
