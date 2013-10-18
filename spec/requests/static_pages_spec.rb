require 'spec_helper'

describe "StaticPages" do

subject { page }  

  describe "Home page" do
    before { visit root_path }
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
