#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2021 Aspose Pty Ltd
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
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
# --------------------------------------------------------------------------------------------------------------------
#

module GroupDocsAnnotationCloud

  require_relative './../../lib/groupdocs_annotation_cloud'
  require_relative './../test_context'
  require_relative './../test_file'   

  class TestPreviewApi < TestContext
    
    def test_get_delete_pages
      TestFile.test_files_annotate.each do |test_file|
        file_info = FileInfo.new()
        file_info.file_path = test_file.path
        file_info.password = test_file.password
        options = PreviewOptions.new()
        options.file_info = file_info

        request = GetPagesRequest.new(options)
        response = @preview_api.get_pages(request)

        assert_operator response.total_count, :>, 0    
        assert_operator response.entries.size, :>, 0  
        
        request = DeletePagesRequest.new(file_info)
        @preview_api.delete_pages(request)          
      end
    end  

  end
end
