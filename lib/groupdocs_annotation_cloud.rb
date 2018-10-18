# ------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="groupdocs_annotation_cloud.rb">
#   Copyright (c) 2003-2018 Aspose Pty Ltd
# </copyright>
# <summary>
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
# 
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
# 
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# ------------------------------------------------------------------------------------

# Common files
require_relative 'groupdocs_annotation_cloud/api_client'
require_relative 'groupdocs_annotation_cloud/api_error'
require_relative 'groupdocs_annotation_cloud/version'
require_relative 'groupdocs_annotation_cloud/configuration'

# Models
require_relative 'groupdocs_annotation_cloud/models/annotation_info'
require_relative 'groupdocs_annotation_cloud/models/annotation_reply_info'
require_relative 'groupdocs_annotation_cloud/models/document_info'
require_relative 'groupdocs_annotation_cloud/models/image_pages'
require_relative 'groupdocs_annotation_cloud/models/link'
require_relative 'groupdocs_annotation_cloud/models/link_element'
require_relative 'groupdocs_annotation_cloud/models/page_info'
require_relative 'groupdocs_annotation_cloud/models/row_info'
require_relative 'groupdocs_annotation_cloud/models/value_type'
require_relative 'groupdocs_annotation_cloud/models/annotation_api_link'
require_relative 'groupdocs_annotation_cloud/models/image_page'
require_relative 'groupdocs_annotation_cloud/models/point'
require_relative 'groupdocs_annotation_cloud/models/rectangle'

# APIs
require_relative 'groupdocs_annotation_cloud/api/annotation_api'
require_relative 'groupdocs_annotation_cloud/api/image_info_api'
require_relative 'groupdocs_annotation_cloud/api/image_pages_api'
require_relative 'groupdocs_annotation_cloud/api/pdf_file_api'

module GroupDocsAnnotationCloud
  # Main module
  class << self
    # Initialize SDK with API keys.
    # 
    # app_sid = "xxx"
    # app_key = "xxx"
    #
    # GroupDocsAnnotationCloud.from_keys(app_sid, app_key)
    def from_keys(app_sid, app_key)
      AnnotationApi.from_keys(app_sid, app_key)
    end

    # Initialize SDK with Configuration.
    # 
    # app_sid = "xxx"
    # app_key = "xxx"
    #
    # config = GroupDocsAnnotationCloud::Configuration.new(app_sid, app_key)
    # config.debugging = true
    # config.temp_folder_path = "./temp"
    #
    # GroupDocsAnnotationCloud.from_config(config)
    def from_config(config)
      AnnotationApi.from_config(config)
    end
  end
end
