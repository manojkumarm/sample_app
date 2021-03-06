require 'spec_helper'

describe "StaticPages" do
  
  subject { page } 

  shared_examples_for "all static pages" do
    it { should have_selector('h1'    , text: heading) }
    it { should have_selector('title' , text: full_title(page_title)) }
  end

  describe "Home Page" do
    before { visit root_path }

    let(:heading)    { 'Sample App' }
    let(:page_title) { full_title('Home') }
    #it { should have_selector('h1'    , text: 'Sample App') }
    #it { should have_selector('title' , text: full_title('Home')) }
  end

  describe "Help Page" do
    before { visit help_path}

    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }
  end

  describe "About page" do
    before { visit about_path }

    let(:heading) { 'About Us' }
    let(:page_title) { 'About Us' }
  end

  describe "Contact page" do
    before { visit contact_path }

    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }
  end
end
