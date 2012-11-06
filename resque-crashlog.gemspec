# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name          = 'resque-crashlog'
  s.version       = '0.1.0'
  s.authors       = ['Pat Allan']
  s.email         = ['pat@freelancing-gods.com']
  s.homepage      = 'https://github.com/pat/resque-crashlog'
  s.summary       = 'Resque failure handler for crashlog.io'
  s.description   = "A handler for Resque's failure backend that will send exceptions through to crashlog.io. Uses your existing CrashLog setup."
  s.require_paths = ['lib']

  s.files         = `git ls-files`.split("\n")

  s.add_runtime_dependency 'resque',   '>= 1.20.0'
  s.add_runtime_dependency 'crashlog', '>= 1.0.1'
end
