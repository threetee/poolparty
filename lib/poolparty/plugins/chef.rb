require "tempfile"
module PoolParty
  class ChefRecipe
    include Dslify
  end
  class Chef
    
    plugin :chef do
      def before_load(o, &block)        
        bootstrap_gems "chef", "ohai"
        bootstrap_commands [
          "mkdir -p /etc/chef/cookbooks /etc/chef/cache"
        ]
      end
      
      def loaded o={}, &block
      end
      
      def recipe_files
        @recipe_files ||= []
      end
      
      def basedir
        @basedir ||= "#{Default.tmp_path}/dr_configure/chef/recipes/main"
      end
      
      def recipe file=nil, o={}, &block        
        if file
          ::FileUtils.mkdir_p "#{basedir}/recipes" unless ::File.directory? basedir
          
          unless ::File.file?(file)
            tfile = Tempfile.new("main-poolparty-recipe")
            tfile << file # copy the string into the temp file
            file = tfile.path
          end
          
          ::File.cp file, "#{basedir}/recipes/default.rb"
          
          templates o[:templates] if o[:templates]
          
          recipe_files << basedir
        # TODO: Enable neat syntax from within poolparty
        else
          raise <<-EOR
            PoolParty currently only supports passing recipes as files. Please specify a file in your chef block and try again"
          EOR
        end
      end
      
      def templates templates=[]
        if templates
          ::FileUtils.mkdir_p "#{basedir}/templates/default/"
          templates.each do |f|
            if ::File.file?(f)
              ::File.cp f, "#{basedir}/templates/default/#{::File.basename(f)}"
            elsif ::File.directory?(f)
              Dir["#{f}/*"].each {|f| ::File.cp f, "#{basedir}/templates/default/#{::File.basename(f)}" }
            else
              tfile = Tempfile.new("main-poolparty-recipe")
              tfile << f # copy the string into the temp file
              ::File.cp tfile.path, "#{basedir}/templates/default/#{::File.basename(f)}"
            end            
          end
        end
      end
      
      def json file=nil, &block
        if @json_file
          @json_file
        else
          if file
            if ::File.file? file
              ::File.cp file, "#{Default.tmp_path}/dr_configure/dna.json"
            elsif file.is_a?(String)
              ::File.open("#{Default.tmp_path}/dr_configure/dna.json", "w+"){|tf| tf << file } # is really a string
            else
              raise <<-EOM
                Your json must either point to a file that exists or a string. Please check your configuration and try again
              EOM
            end
            @json_file = "#{Default.tmp_path}/dr_configure/dna.json"
          else
            unless @recipe
              @recipe = ChefRecipe.new
              @recipe.instance_eval &block if block
              @recipe.recipes(recipe_files.empty? ? ["poolparty"] : ["poolparty", "main"])
              ::File.open("#{Default.tmp_path}/dr_configure/dna.json", "w+") {|f| f << @recipe.options.to_json }
              @json_file = "#{Default.tmp_path}/dr_configure/dna.json"
            end
          end
        end
      end
      
      def include_recipes *recps
        unless recps.empty?
          recps.each do |rcp|
            Dir[::File.expand_path(rcp)].each do |f|              
              added_recipes << f
            end            
          end
        end
      end
      
      def config file=""
        if @config_file
          @config_file
        else
          if ::File.file? file
            @config_file = file
          else
            conf_string = if file.empty?
# default config
            <<-EOE
cookbook_path     "/etc/chef/cookbooks"
node_path         "/etc/chef/nodes"
log_level         :info
file_store_path  "/etc/chef"
file_cache_path  "/etc/chef"
            EOE
            else
              open(file).read
            end
            ::File.open("#{Default.tmp_path}/dr_configure/chef_config.rb", "w+") do |tf|
              tf << conf_string
            end
            @config_file = "#{Default.tmp_path}/dr_configure/chef_config.rb"
          end
        end
      end
      
      def added_recipes
        @added_recipes ||= []
      end
      
      def after_create
        before_configure
      end
      
      def before_configure
        config
        json
        
        if ::File.directory?("/etc/chef")
          ::Suitcase::Zipper.add("/etc/chef/cookbooks/*", "chef/recipes")
          ::Suitcase::Zipper.add("/etc/chef/dna.json", "chef/json")
          ::Suitcase::Zipper.add("/etc/chef/solo.rb", "chef/")
        end
        
        ::Suitcase::Zipper.add(@config_file, "chef")
        added_recipes.each do |rcp|
          # ::FileUtils.cp_r rcp, "/tmp/poolparty/dr_configure/recipes/"
          ::Suitcase::Zipper.add(rcp, "chef/recipes")
        end
        
        ::Suitcase::Zipper.add(@json_file, "chef/json")
        configure_commands ["cp -f /var/poolparty/dr_configure/chef/json/dna.json /etc/chef/dna.json"]

        recipe_files.each do |rf|
          ::FileUtils.mkdir_p "/tmp/poolparty/dr_configure/recipes/#{::File.basename(rf)}"
          ::FileUtils.cp_r rf, "/tmp/poolparty/dr_configure/recipes/#{::File.basename(rf)}"
          # ::Suitcase::Zipper.add(rf, "chef/recipes") 
        end
      end
      
    end
    
  end
end