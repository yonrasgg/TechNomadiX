# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-chirpy"
  spec.version       = "7.1.1"
  spec.authors       = ["Geovanny Alpizar"]
  spec.email         = ["geovanny.alpizar@protonmail.com"]

  spec.summary       = "A minimal, responsive, and feature-rich Jekyll theme for technical writing. This is a fork of the original project created by Cotes Chung."
  spec.homepage      = "https://github.com/yonrasgg/jekyll-theme-chirpy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f|
    f.match(%r!^((_(includes|layouts|sass|(data\/(locales|origin)))|assets)\/|README|LICENSE)!i)
  }

  spec.metadata = {
    # "bug_tracker_uri"   => "https://github.com/yonrasgg/TechNomadiX/issues",
    "documentation_uri" => "https://github.com/yonrasgg/TechNomadix/#readme",
    "homepage_uri"      => "https://gaaspkm.online",
    "source_code_uri"   => "https://github.com/yonrasgg/TechNomadiX",
    # "wiki_uri"          => "https://github.com/yonrasgg/jekyll-theme-chirpy/wiki",
    "plugin_type"       => "theme"
  }

  spec.required_ruby_version = "~> 3.1"

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.2"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2"

end
