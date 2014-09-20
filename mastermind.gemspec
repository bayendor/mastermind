Gem::Specification.new do |s|
  s.name          = 'mastermind-bayendor'
  s.version       = '1.0.0'
  s.author        = 'David Bayendor'
  s.email         = 'dbayendor@gmail.com'
  s.summary       = 'Ruby REPL of Mastermind for Turing Project'
  s.description   = File.read(File.join(File.dirname(__FILE__), 'README.md'))
  s.licenses      = 'MIT'
  s.homepage      = ''

  s.files         = Dir['{bin,lib,spec}/**/*'] + %w( LICENSE.md README.md )
  s.test_files    = Dir['spec/**/*']
  s.executables   = ['']

  s.required_ruby_version = '>=2.1.0'
  s.add_development_dependency 'rspec', '~> 3.0'
end

