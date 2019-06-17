class ValidatePage
  require 'capybara/dsl' 
  include Capybara::DSL
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  Capybara.current_driver = Capybara.javascript_driver

  @@parser = nil

  def self.set_parser(name)
    @@parser = name
  end

  def self.validator
    @@parser
  end
  
  def self.on(attrib, content, message)
    @@attrib = attrib
    @@content = content
    @@message = message
    return self
  end

  def validate(record)
    if(present record[@@attrib])
      record.errors.add @@attrib, (@@message.present? ? @@message : 'page contains inappropriate content')
    end
  end

  def present(url)
    if @@parser == :text_parser
      page = Net::HTTP.get_response(URI.parse(url)).response.body
      @@content.split(/[;,\s\.]+/).any?{|c| page.include?(c)}
    else
      uri = URI.parse(url.chomp)
      Capybara.app_host = uri.scheme + '://' + uri.host
      visit uri.path
      @@content.split(/[;,\s\.]+/).any?{|c| page.has_text?(c)}
    end
  end
end