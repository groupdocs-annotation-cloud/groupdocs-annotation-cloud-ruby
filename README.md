![](https://img.shields.io/badge/api-v2.0-lightgrey) ![Gem](https://img.shields.io/gem/v/groupdocs_annotation_cloud) ![Gem](https://img.shields.io/gem/dt/groupdocs_annotation_cloud) [![GitHub license](https://img.shields.io/github/license/groupdocs-annotation-cloud/groupdocs-annotation-cloud-ruby)](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-ruby/blob/master/LICENSE) 

# Annotate Documents via Ruby with REST API

[GroupDocs.Annotation Cloud SDK for Ruby](https://products.groupdocs.cloud/annotation/ruby) wraps GroupDocs.Annotation RESTful APIs so you may integrate Document Annotation features in your own Java apps with zero initial cost.

The solution helps in applying annotations, sticky notes, watermark overlays, redactions, text replacements and markups to documents, presentations, emails, spreadsheets, PDF, images other file formats.

## Annotate Documents & Images in the Cloud

- Import document annotations.
- Add or remove annotations.
- Export annotated document back to its original format.
- Preview document pages as images.
- Fetch document information, such as, page count & file size.

Check out the [Developer's Guide](https://docs.groupdocs.cloud/annotation/developer-guide/) to know more about GroupDocs.Annotation REST API.

## Microsoft Office Formats

**Microsoft Word:** DOC, DOCM, DOCX, DOT, DOTM, DOTX, RTF\
**Microsoft Excel:** XLS, XLSX\
**Microsoft PowerPoint:** PPT, PPTX, PPSX\
**Microsoft Visio:** VSSX, VSS, VSSM, VDX, VSD, VSDX, VSDM, VSTM, VSX, VTX\
**Microsoft Outlook:** EML, EMLX, MSG

## Other Document Formats

**Portable:** PDF\
**OpenDocument:** ODT, OTT, ODP, OTP\
**Images:** BMP, PNG, JPG, JPEG, TIFF, TIF, GIF\
**Web:** MHTML\
**Others:** TXT

## Get Started with GroupDocs.Annotation Cloud SDK for Ruby

First create an account at [GroupDocs for Cloud](https://dashboard.groupdocs.cloud/) and get your application information. Next, follow the installation steps to get started.

## Installation

A GEM of GroupDocs.Annotation is available at [rubygems.org](https://rubygems.org/gems/groupdocs_annotation_cloud). You can install it with the help of the following command.

```shell
gem install groupdocs_annotation_cloud
```    

Copy following into your Gemfile and run `bundle install`to add the dependency to your app.

```
gem "groupdocs_annotation_cloud", "~> 20.10"
```

## Get Supported File Formats for Annotation

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

## GroupDocs.Annotation Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js |
|---|---|---|---|---|---|
| [GitHub](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-dotnet) | [GitHub](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-java) | [GitHub](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-php) | [GitHub](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-python) | [GitHub](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-ruby)  | [GitHub](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-node) |
| [NuGet](https://www.nuget.org/packages/GroupDocs.Annotation-Cloud/) | [Maven](https://repository.groupdocs.cloud/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-annotation-cloud) | [Composer](https://packagist.org/packages/groupdocscloud/groupdocs-annotation-cloud) | [PIP](https://pypi.org/project/groupdocs-annotation-cloud/) | [GEM](https://rubygems.org/gems/groupdocs_annotation_cloud)  | [NPM](https://www.npmjs.com/package/groupdocs-annotation-cloud) | 

[Home](https://www.groupdocs.cloud/) | [Product Page](https://products.groupdocs.cloud/annotation/ruby) | [Documentation](https://docs.groupdocs.cloud/annotation/) | [Live Demo](https://products.groupdocs.app/annotation/total) | [API Reference](https://apireference.groupdocs.cloud/annotation/) | [Code Samples](https://github.com/groupdocs-annotation-cloud/groupdocs-annotation-cloud-ruby-samples) | [Blog](https://blog.groupdocs.cloud/category/annotation/) | [Free Support](https://forum.groupdocs.cloud/c/annotation) | [Free Trial](https://dashboard.groupdocs.cloud)
