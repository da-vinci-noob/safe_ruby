# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'safe_ruby/version'

Gem::Specification.new do |s|
  s.name        = 'safe_ruby'
  s.version     = SafeRuby::VERSION
  s.authors     = ['Jérôme Arbez-Gindre', 'Uku Taht']
  s.email       = 'jeromearbezgindre@gmail.com'

  s.summary     = "Run untrusted ruby code in a safe environment"
  s.description = "Evaluates ruby code by writing it to a tempfile and spawning a child process. Uses a whitelist of methods and constants to keep, for example one cannot run system commands in the environment created by this gem. The environment created by the untrusted code does not leak out into the parent process."
  s.homepage    = 'https://gitlab.com/defmastership/safe_ruby/'
  s.license     = 'MIT'

  s.executables    = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files          = `git ls-files`.split("\n")
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'childprocess', '~> 5'
end
