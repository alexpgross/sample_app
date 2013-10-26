require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right Title" do
      get 'home'
      response.body.should have_selector("title",
                                        :content => "Ruby on Rails Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right Title" do
      get 'contact'
      response.body.should have_selector("title",
                                        :content => "Ruby on Rails Sample App | Contact")
    end
  end

  describe "GET 'about' " do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right Title" do
      get 'about'
      response.body.should have_selector("title",
                                        :content => "Ruby on Rails Sample App | About")
    end
  end

end
