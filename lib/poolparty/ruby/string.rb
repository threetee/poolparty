class String
  def ^(h={})
    self.gsub(/:([\w]+)/) {h[$1.to_sym] if h.include?($1.to_sym)}
  end
  def top_level_class
    self.split("::")[-1].underscore.downcase rescue self.class.to_s
  end
  def sanitize
    self.gsub(/[ \.\/\-]*/, '')
  end
  def keyerize
    signed_short = 0x7FFFFFFF
    len = self.sanitize.length
    hash = 0 
    len.times{ |i|  hash = self[i] + ( hash << 6 ) + ( hash << 16 ) - hash }
    hash & signed_short
  end
  def safe_quote
    self.gsub(/['"]/, '\\\"')
    # self.gsub(/["']/, "\\\"")
  end
  def path_quote
    self.safe_quote.gsub(/[ ]/, '\ ')
  end
  
  def camelcase
    gsub(/(^|_|-)(.)/) { $2.upcase }
  end
  
  # "FooBar".snake_case #=> "foo_bar"
   def snake_case
     gsub(/\B[A-Z]+/, '_\&').downcase
   end
   
    # "FooBar".dasherize #=> "foo-bar"
    def dasherize
      gsub(/\B[A-Z]+/, '-\&').downcase
    end
    
    def classify
      self.sub(/.*\./, '').camelcase
    end
    
    #TODO: implement here to drop activesupport
    # # Form can be either :utc (default) or :local.
    # def to_time(form = :utc)
    #   ::Time.send("#{form}_time", *::Date._parse(self, false)(:year, :mon, :mday, :hour, :min, :sec).map { |arg| arg || 0 })
    # end
    
    
  # Constantize tries to find a declared constant with the name specified
  # in the string. It raises a NameError when the name is not in CamelCase
  # or is not initialized.
  #
  # Examples
  #   "Module".constantize #=> Module
  #   "Class".constantize #=> Class
  def constantize(mod=Object)
    camelcased_word = camelcase
    begin
      mod.module_eval(camelcased_word, __FILE__, __LINE__)
    rescue NameError
      puts "#{camelcased_word} is not defined."
      nil
    end
  end
  
  def collect_each_line_with_index(&block)
    returning [] do |arr|
      arr << self.split(/\n/).collect_with_index(&block)
    end.flatten
  end
  
  # Read a new-line separated string and turn 
  # the string from the form 
  #   a = "b"
  #   b = "c"
  # into a hash
  #  {:a => "b", :b => "c"}
  def to_hash
    split("\n").inject({}) do |sum,line| 
      if line.include?("=")
        l = line.split("=").map {|a| a.strip }
        key = l[0].to_sym
        value = l[1].gsub(/\"/, '')
        sum.merge(key => value)
      else
        sum
      end
    end
  end
  
  # Take a mac address and split it to map to the arp -a response
  # Just rip off the first 0 if the first char is 0
  def macify
    split(":").map {|a| a[0].chr == "0" ? a[1].chr : a}.join(":")
  end

  ##
  # @param o<String> The path component to join with the string.
  #
  # @return <String> The original path concatenated with o.
  #
  # @example
  #   "merb"/"core_ext" #=> "merb/core_ext"
  def /(o)
    File.join(self, o.to_s)
  end
  
  # Parse json string to a ruby object
  def json_parse
    return nil if self == "null" || self.empty?
    result = JSON.parse self
    if result.respond_to? :keys
      result.symbolize_keys!
    end
  end

  # dumb and ugly pluralize
  def pluralize(count=2)
    count > 1 ? self + "s" : self 
  end
  
end