Gem::Specification.new do |s|
  s.name = "validate_page"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dileep Nandanam"]
  s.date = "2014-11-20"
  s.description = "Gem to validate link to pages based on content"
  s.email = "dileepsnandanam@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "VERSION",
    "lib/validate_page.rb",
    "validate_page.gemspec",
  ]
  s.homepage = "http://github.com/dileepnandanam/validate_page"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "rails gem for validating url by crawling page for specific unwanted content"
end

