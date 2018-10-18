#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_annotation_api.rb">
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

  class TestAnnotationApi < TestContext

    include GroupDocsStorageCloud
    include MiniTest::Assertions

    # Removes annotations from document.
    def test_delete_clean_document
      file = TestFile.one_page_annotated_pdf
      request = DeleteCleanDocumentRequest.new(file.file_name)
      request.folder = file.folder
      response = @annotation_api.delete_clean_document request
      assert response != nil
    end

    # Extracts annotations from document.
    def test_get_import
      file = TestFile.one_page_annotated_pdf
      request = GetImportRequest.new(file.file_name)
      request.folder = file.folder
      response = @annotation_api.get_import request
      assert response != nil
      assert response[0].type == "Text"
    end

    # Adds annotations to the document.
    def test_put_export
      reply1 = AnnotationReplyInfo.new(:Message => "reply text", :RepliedOn => Time.now, :UserName => "Admin")
      reply2 = AnnotationReplyInfo.new(:Message => "reply2 text", :RepliedOn => Time.now, :UserName => "Commentator")
      replies = [reply1, reply2]
      textAnnotation = AnnotationInfo.new(
          :AnnotationPosition => Point.new(:X => 852.0, :Y => 154.31),
          :Box => Rectangle.new(:X => 173.29, :Y => 154.31, :Width => 142.5, :Height => 9.0),
          :PageNumber => 0,
          :Replies => replies,
          :SvgPath => "[{\"x\":173.2986,\"y\":687.5769},{\"x\":315.7985,\"y\":687.5769},{\"x\":173.2986,\"y\":678.5769},{\"x\":315.7985,\"y\":678.5769}]",
          :Type => "TextUnderline",
          :CreatorName => "Anonym A."
      )
      annotations = [textAnnotation]
      file = TestFile.one_page_pdf
      request = PutExportRequest.new(file.file_name, annotations, file.folder);
      response = @annotation_api.put_export(request);
      assert response != nil
    end
  end
end
