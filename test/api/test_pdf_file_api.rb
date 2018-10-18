#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_pdf_file_api.rb">
#    Copyright (c) 2003-2018 Aspose Pty Ltd
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

  require 'groupdocs_storage_cloud'

  require_relative './../test_context'
  require_relative './../test_settings'
  require_relative './../test_file'

  class TestPdfFileApi < TestContext

    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # Retrieves document as PDF.
    def test_get_pdf
      file = TestFile.one_page_pdf
      request = GetPdfRequest.new(file.file_name, file.folder)
      response = @pdf_file_api.get_pdf request
      assert response != nil
    end

    # Downloads document as PDF.
    def test_get_pdf_stream
      file = TestFile.one_page_pdf
      request = GetPdfStreamRequest.new(file.file_name, file.folder)
      response = @pdf_file_api.get_pdf_stream request
      assert response != nil
    end
  end
end