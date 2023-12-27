#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2023 Aspose Pty Ltd
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

  class TestInfoApi < TestContext
    
    def test_get_supported_file_formats
      response = @info_api.get_supported_file_formats
      response.formats.each do |format|
        assert_equal false, format.file_format.empty? 
        assert_equal false, format.extension.empty?
      end
    end

    def test_get_info
      TestFile.test_files_annotate.each do |test_file|
        file_info = FileInfo.new()
        file_info.file_path = test_file.path
        file_info.password = test_file.password
        request = GetInfoRequest.new(file_info)
        response = @info_api.get_info(request)
        assert_equal test_file.path, response.path
      end
    end  

    def test_get_info_file_not_found
      file_info = FileInfo.new()
      file_info.file_path = "some-folder\\NotExist.docx"
      request = GetInfoRequest.new(file_info)
      error = assert_raises ApiClientError do
        @info_api.get_info(request)
      end
      assert_equal "Specified file not found", error.message
    end      

  end
end
