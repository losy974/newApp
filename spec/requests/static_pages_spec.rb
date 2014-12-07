require 'spec_helper'

	describe "StaticPages" do
# <<<<<<< HEAD
# <<<<<<< HEAD
		# describe "Home page" do
		# it "should have the content 'Sample App'" do
			# visit '/static_pages/home' 
			# expect(page).to have_content('Sample App') 
		# end
		# it "should have the base title" do
			# visit '/static_pages/home' 	
			# expect(page).to have_title("Ruby on Rails Tutorial Sample App") 
# =======
# # <<<<<<< HEAD


		subject { page }


		describe "Home page" do 
			before { visit root_path }
				it { should have_content('Sample App') }
				it { should have_title(full_title('')) } 
				it { should_not have_title('| Home') } 
# >>>>>>> modeling-users
		end
		
		describe "Help page" do
			before { visit help_path }
			it { should have_content('Help') }
			it { should have_title(full_title('Help')) } 
	end 
				
	describe "About page" do
# <<<<<<< HEAD
		
# =======
		before { visit about_path }
		it { should have_content('About') }
		it { should have_title(full_title('About Us')) } 

	end
# >>>>>>> modeling-users

	describe "Contact page" do
		before { visit contact_path }
		it { should have_content('Contact') } 
		it { should have_title(full_title('Contact')) } 



# =======
 end
# >>>>>>> modeling-users

end

