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

  class TestAnnoteApi < TestContext
    
    def test_annotate
      TestFile.test_files_annotate.each do |test_file|

        @annotate_api.config.logger.debug "Annotate: " + test_file.path
        
        file_info = FileInfo.new()
        file_info.file_path = test_file.path
        file_info.password = test_file.password
        options = AnnotateOptions.new()
        options.file_info = file_info
        options.annotations = get_annotations()
        options.output_path = @@output_dir + '/' + test_file.file_name

        request = AnnotateRequest.new(options)
        result = @annotate_api.annotate(request)   
        assert_operator result.href.length, :>, 0
      end
    end 

    def test_annotate_direct
      TestFile.test_files_annotate.each do |test_file|

        @annotate_api.config.logger.debug "Annotate direct: " + test_file.path
        
        file_info = FileInfo.new()
        file_info.file_path = test_file.path
        file_info.password = test_file.password
        options = AnnotateOptions.new()
        options.file_info = file_info
        options.annotations = get_annotations()
        options.output_path = @@output_dir + '/' + test_file.file_name

        request = AnnotateDirectRequest.new(options)
        result = @annotate_api.annotate_direct(request)   
        assert_operator result.length, :>, 0
      end
    end    

    def test_extract
      TestFile.test_files_with_annotations.each do |test_file|

        @annotate_api.config.logger.debug "Extract annotations: " + test_file.path
        
        file_info = FileInfo.new()
        file_info.file_path = test_file.path
        file_info.password = test_file.password

        request = ExtractRequest.new(file_info)
        result = @annotate_api.extract(request)   
        assert_operator result.length, :>, 0
      end
    end  

    def test_remove
      TestFile.test_files_with_annotations.each do |test_file|

        @annotate_api.config.logger.debug "Remove annotations: " + test_file.path
        
        file_info = FileInfo.new()
        file_info.file_path = test_file.path
        file_info.password = test_file.password
        options = RemoveOptions.new()
        options.file_info = file_info
        options.annotation_ids = [1, 2, 3]
        options.output_path = @@output_dir + '/' + test_file.file_name

        request = RemoveAnnotationsRequest.new(options)
        result = @annotate_api.remove_annotations(request)   
        assert_operator result.href.length, :>, 0
      end
    end   

    def get_annotations
      a = AnnotationInfo.new
      a.annotation_position = Point.new
      a.annotation_position.x = 852
      a.annotation_position.y = 59.388262910798119
      a.box = Rectangle.new
      a.box.x = 375.89276123046875
      a.box.y = 59.388263702392578
      a.box.width = 88.7330551147461
      a.box.height = 37.7290153503418
      a.page_number = 0
      a.pen_color = 1201033
      a.pen_style = "Solid"
      a.pen_width = 1
      a.type = "Area"
      a.creator_name = "Anonym A."
      [a]
    end    

  end
end
