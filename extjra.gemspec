# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{extjra}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehezkiel Syamsuhadi"]
  s.date = %q{2011-07-18}
  s.description = %q{TODO: longer description of your gem}
  s.email = %q{yehezkielbs@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "config/routes.rb",
    "extjra.gemspec",
    "lib/extjra.rb",
    "lib/extjra/engine.rb",
    "test/spec/extjra_spec.rb",
    "test/spec/spec_helper.rb",
    "test/test_app/.gitignore",
    "test/test_app/Gemfile",
    "test/test_app/Gemfile.lock",
    "test/test_app/README",
    "test/test_app/Rakefile",
    "test/test_app/app/controllers/application_controller.rb",
    "test/test_app/app/helpers/application_helper.rb",
    "test/test_app/app/views/layouts/application.html.erb",
    "test/test_app/config.ru",
    "test/test_app/config/application.rb",
    "test/test_app/config/boot.rb",
    "test/test_app/config/database.yml",
    "test/test_app/config/environment.rb",
    "test/test_app/config/environments/development.rb",
    "test/test_app/config/environments/production.rb",
    "test/test_app/config/environments/test.rb",
    "test/test_app/config/initializers/backtrace_silencers.rb",
    "test/test_app/config/initializers/inflections.rb",
    "test/test_app/config/initializers/mime_types.rb",
    "test/test_app/config/initializers/secret_token.rb",
    "test/test_app/config/initializers/session_store.rb",
    "test/test_app/config/locales/en.yml",
    "test/test_app/config/routes.rb",
    "test/test_app/db/seeds.rb",
    "test/test_app/lib/tasks/.gitkeep",
    "test/test_app/public/404.html",
    "test/test_app/public/422.html",
    "test/test_app/public/500.html",
    "test/test_app/public/favicon.ico",
    "test/test_app/public/images/rails.png",
    "test/test_app/public/index.html",
    "test/test_app/public/javascripts/.gitkeep",
    "test/test_app/public/javascripts/application.js",
    "test/test_app/public/robots.txt",
    "test/test_app/public/stylesheets/.gitkeep",
    "test/test_app/script/rails",
    "test/test_app/vendor/plugins/.gitkeep"
  ]
  s.homepage = %q{http://github.com/yehezkielbs/extjra}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{TODO: one-line summary of your gem}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest_engine>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["~> 3.0.9"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.6.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.15"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rest_engine>, [">= 0"])
      s.add_dependency(%q<rails>, ["~> 3.0.9"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.3"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.6.0"])
      s.add_dependency(%q<yard>, ["~> 0.7.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0.15"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rest_engine>, [">= 0"])
    s.add_dependency(%q<rails>, ["~> 3.0.9"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.3"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.6.0"])
    s.add_dependency(%q<yard>, ["~> 0.7.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0.15"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

