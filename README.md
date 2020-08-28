# GroupDocs.Annotation Cloud Ruby SDK
Ruby gem for communicating with the GroupDocs.Annotation Cloud API

## Installation

A gem of groupdocs_annotation_cloud is available at [rubygems.org](https://rubygems.org). You can install it with:

```shell
gem install groupdocs_annotation_cloud
```    

To add dependency to your app copy following into your Gemfile and run `bundle install`:

```
gem "groupdocs_annotation_cloud", "~> 19.5"
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'groupdocs_annotation_cloud'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
app_sid = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
app_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Create instance of the API class
api = GroupDocsAnnotationCloud::InfoApi.from_keys(app_sid, app_key)

# Retrieve supported file-formats
response = api.get_supported_file_formats

# Print out supported file-formats
puts("Supported file-formats:")
response.formats.each do |format|
  puts("#{format.file_format} (#{format.extension})") 
end
```

## Licensing
GroupDocs.Annotation Cloud Ruby SDK licensed under [MIT License](LICENSE).

[Home](https://www.groupdocs.cloud/) | [Product Page](https://products.groupdocs.cloud/annotation/ruby) | [Documentation](https://docs.groupdocs.cloud/annotation/) | [API Reference](https://apireference.groupdocs.cloud/annotation/) | [Examples](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-ruby) | [Blog](https://blog.groupdocs.cloud/category/annotation/) | [Free Support](https://forum.groupdocs.cloud/c/annotation) | [Free Trial](https://purchase.groupdocs.cloud/trial)
