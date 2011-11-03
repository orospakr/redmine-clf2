module RedmineClf2
  module Patches
    module WelcomeControllerPatch
      def self.included(base)
        base.send(:include, InstanceMethods)

        base.class_eval do
          unloadable
          alias_method_chain :index, :clf_mods
        end
      end
    end

    module InstanceMethods
      def index_with_clf_mods
        if ActiveRecord::ConnectionAdapters::Column.value_to_boolean(params["nowelcome"]) or User.current.logged?
          @news = News.latest(User.current).select{|n| n.project.to_s == 'IRCan Franchise of TBS'}
        else
          @lang_en = {:url => set_nowelcome_in_url(canonical_url("en")), :name => "English", :title => "English - English version of the Web site"}
          @lang_fr = {:url => set_nowelcome_in_url(canonical_url("fr")), :name => "Français", :title => "Français - Version française de ce site Web"}
            
          render :action => 'welcome', :layout => 'wp-pa' 
        end
      end

      def welcome
        render :layout => 'wp-pa' 
      end
    end 
  end
end
