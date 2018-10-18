require './lib/groupdocs_annotation_cloud/version'

Gem::Specification.new do |spec|
  spec.name        = 'groupdocs_annotation_cloud'
  spec.version     = GroupDocsAnnotationCloud::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.license     = 'MIT'
  spec.summary     = 'GroupDocs.Annotation Cloud Ruby SDK'
  spec.description = 'Ruby gem for communicating with the GroupDocs.Annotation Cloud API'
  spec.author      = 'GroupDocs'
  spec.email       = 'support@groupdocs.cloud'
  spec.homepage    = 'https://products.groupdocs.cloud/annotation/ruby'
  spec.metadata    = { 'source_code_uri' => 'https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-ruby' }

  spec.add_runtime_dependency 'faraday', '~> 0.14.0'
  spec.add_runtime_dependency 'mimemagic', '~> 0.3.2'
  spec.add_runtime_dependency 'addressable', '~> 2.5.0', '>= 2.5.0'
  
  spec.add_development_dependency 'groupdocs_storage_cloud', '~> 18.6', '>= 18.5'
  spec.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'

  spec.files         = Dir['lib/**/*.rb']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '~> 2.3'
end
