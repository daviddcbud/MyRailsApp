require 'spec_helper'

describe "InfoPages" do
  
  let(:base_title) {"Member Tracker"}
  
  
  describe "Home Page" do
    subject { page }
    before { visit home_path }
    it "should have correct title" do
          page.should have_selector('title',
                                  :text => "#{base_title} | Home") 
    end
  end
  
  describe "Root Page" do
    subject { page }
    before { visit root_path }
    it "should have correct title" do
          page.should have_selector('title',
                                  :text => "#{base_title} | Home") 
    end
    
    it "should have about link" do
       click_link "Contact" 
       page.should have_selector('title',
                                  :text => "#{base_title} | Contact") 
    end
    
    it "should have help link" do
       click_link "Help" 
       page.should have_selector('title',
                                  :text => "#{base_title} | Help") 
    end
  end
  
  
  
  describe "Help Page" do
    subject { page }
    before { visit help_path }
    it "should have correct title" do
          page.should have_selector('title',
                                  :text => "#{base_title} | Help") 
    end
  end
  
  describe "Contact Page" do
    subject { page }
    before { visit contact_path }
    it "should have correct title" do
          page.should have_selector('title',
                                  :text => "#{base_title} | Contact") 
    end
  end
  
end
