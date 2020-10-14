#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2020 Aspose Pty Ltd
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
    
    def test_annotations
      TestFile.test_files_list.each do |test_file|

        @annotate_api.config.logger.debug "Annotate: " + test_file.path
        
        # Post annotation
        request = PostAnnotationsRequest.new(test_file.path, get_annotations())
        response = @annotate_api.post_annotations(request)         

        # Import annotations
        request = GetImportRequest.new(test_file.path)
        response = @annotate_api.get_import(request)  
        assert_operator response.size, :>, 0 

        # Export annotations
        request = GetExportRequest.new(test_file.path, nil, nil, nil, nil, test_file.password)
        response = @annotate_api.get_export(request)  
        assert_operator response.length, :>, 0  
        
        # Delete annotations
        request = DeleteAnnotationsRequest.new(test_file.path)
        @annotate_api.delete_annotations(request)
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
