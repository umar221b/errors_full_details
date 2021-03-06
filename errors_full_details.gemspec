$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'errors_full_details/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'errors_full_details'
  spec.version     = ErrorsFullDetails::VERSION
  spec.authors     = ['Umar Al-Kfaween']
  spec.email       = ['omar.ka923@gmail.com']
  spec.homepage    = "https://github.com/umar221b/errors_full_details"
  spec.summary     = 'ErrorsFullDetails extends ActiveModel::Errors to allow adding error codes to error messages'
  spec.description = 'ErrorsFullDetails extends ActiveModel::Errors to allow adding error codes to error messages'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 5.2.2.1'
end
