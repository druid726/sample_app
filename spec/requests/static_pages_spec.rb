require 'spec_helper'

describe "StaticPages" do

subject { page }  

  describe "Home page" do
    before { visit root_path }

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end
    end
  end

  describe "Help page" do
    before { visit help_path }
 	end

  describe "About page" do
    before { visit about_path }
  end

  describe "Contact page" do
    before { visit contact_path }
  end
 end
