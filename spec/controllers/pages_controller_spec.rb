require 'spec_helper'


describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Sample App"
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right Title" do
      get 'home'
      response.body.should have_selector("title", :content => "#{@base_title} | Home")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right Title" do
      get 'contact'
      response.body.should have_selector("title", :content => "#{@base_title} | Contact")
    end
  end

  describe "GET 'about' " do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right Title" do
      get 'about'
      response.body.should have_selector("title", :content => "#{@base_title}| About")
    end
  end

   describe "GET 'help' " do
    it "returns http success" do
      get 'help'
      response.should be_success
    end

    it "should have the right Title" do
      get 'help'
      response.body.should have_selector("title", :content => "#{@base_title}| Help")
    end
  end
end
