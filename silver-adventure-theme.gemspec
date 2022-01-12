# coding: utf-8

Gem::Specification.new do |spec|
    spec.name          = "pepper-central-theme"
    spec.version       = "4.1.0"
    spec.authors       = ["Tim Pepper"]
    spec.email         = ["tim.pepper04@gmail.com"]
  
    spec.summary       = %q{A blog site for me to ramble in general.}
    spec.description   = "A blog site for me to ramble in general."
    spec.homepage      = "https://tpepper0408.github.io/pepper-central"
    spec.license       = "MIT"
  
    spec.metadata["plugin_type"] = "theme"
  
    spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README|sw|manifest)}i) }
  
    spec.add_runtime_dependency "jekyll", "~> 4.1"
    spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"
    spec.add_runtime_dependency "jekyll-mentions", "~> 1.6.0"
    spec.add_runtime_dependency "jekyll-paginate", "~> 1.1.0"
    spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7.1"
    spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
    spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
    spec.add_runtime_dependency "jekyll-commonmark", "~> 1.3.1"
    spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2"
    spec.add_runtime_dependency "jemoji", "~> 0.12"
  end
  