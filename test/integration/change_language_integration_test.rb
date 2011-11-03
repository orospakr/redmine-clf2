require File.dirname(__FILE__) + '/../test_helper'

class ChangeLanguageIntegrationTest < ActionController::IntegrationTest
  include Redmine::I18n

  context "sets locale from subdomain" do
    setup do
      ApplicationController.load_clf2_subdomains_file(File.join(Rails.plugins['redmine_clf2'].directory,'config','subdomains.yml.example'))
      ApplicationController.load_clf2_config_file(File.join(Rails.plugins['redmine_clf2'].directory, 'config', 'config.yml.example'))
     
    end

    context "while anonymous" do
      setup do
        setup_anonymous_role
        setup_non_member_role
        User.current = User.anonymous
      end

      should "get english welcome page" do
        host! "tbs-sct.ircan-rican.gc.ca"
        get '/'
        assert_template "welcome.en"
      end

      should "get english welcome page" do
        host! "sct-tbs.rican-ircan.gc.ca"
        get '/'
        assert_template "welcome.fr"
      end
    end

    # login appears to be broken
    #   context "while logged in" do
    #     setup do
    #       log_user('jsmith', 'jsmith')
    #     end
    
    #     should "get french home page" do
    #       host! "sct-tbs.rican-ircan.gc.ca"
    #       get '/'
    #       assert_template "welcome.fr"
    #     end
    #   end
    # end
  
  # context "can change language by visiting a url" do
  #   setup do
  #     setup_anonymous_role
  #     setup_non_member_role
  #     User.current = User.anonymous
  #   end
    
  #   should "change to french when visiting /french" do
  #     get '/'
  #     assert_response :success
  #     assert_template "welcome/index"
  #     assert_equal nil, session[:language]
      
  #     get '/french'
  #     assert_response :redirect
  #     assert_redirected_to :controller => 'welcome', :action => 'index'
  #     assert_equal 'fr', session[:language]
  #   end

  #   should "change to english when visiting /english" do
  #     get '/'
  #     assert_response :success
  #     assert_template "welcome/index"
  #     assert_equal nil, session[:language]
      
  #     get '/english'
  #     assert_response :redirect
  #     assert_redirected_to :controller => 'welcome', :action => 'index'
  #     assert_equal 'en', session[:language]
  #   end
  end
end
