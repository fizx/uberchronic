Gem::Specification.new do |s|
  s.name     = "uberchronic"
  s.version  = "0.1.0"
  s.date     = "2009-04-14"
  s.summary  = "Like chronic, plus GNU getdate to cover edge cases"
  s.email    = "kyle@kylemaxwell.com"
  s.homepage = "http://github.com/fizx/"
  s.description = "Like chronic, plus GNU getdate to cover edge cases"
  s.has_rdoc = true
  s.require_paths = ["lib", "ext"]
  s.extensions = "ext/extconf.rb"
  s.authors  = ["Kyle Maxwell"]
  s.files    = %w[
    ext/extconf.rb
    ext/get_date.c
    lib/uberchronic.rb
    test/uberchronic_test.rb
    uberchronic.gemspec
    ]
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["README"]
  s.add_dependency("chronic", ["> 0.0.0"])
end
