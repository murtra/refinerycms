# Encoding: UTF-8
require File.expand_path('../../core/lib/refinery/version', __FILE__)

version = Refinery::Version.to_s

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = %q{refinerycms-resources}
  s.version           = version
  s.summary           = %q{Resources extension for Refinery CMS}
  s.description       = %q{Handles all file upload and processing functionality in Refinery CMS.}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Philip Arndt', 'Uģis Ozols']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- spec/*`.split("\n")

  s.add_dependency 'acts_as_indexed',         '~> 0.8.0'
  s.add_dependency 'dragonfly',               '~> 1.0.0'
  s.add_dependency 'dragonfly-s3_data_store', '~> 1.0.0'
  s.add_dependency 'refinerycms-core',        version
end
