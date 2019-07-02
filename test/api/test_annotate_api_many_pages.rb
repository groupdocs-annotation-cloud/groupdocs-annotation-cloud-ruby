#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2019 Aspose Pty Ltd
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

  class TestAnnoteApiManyPages < TestContext
    
    def test_get_pdf
      TestFile.test_files_list_many_pages.each do |test_file|
        request = GetPdfRequest.new(test_file.path)
        response = @annotate_api.get_pdf(request)  
        assert_operator response.length, :>, 0          
      end
    end 
    
    def test_annotations
      TestFile.test_files_list_many_pages.each do |test_file|

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
      a1 = AnnotationInfo.new
      a1.annotation_position = Point.new
      a1.annotation_position.x = 852
      a1.annotation_position.y = 59.388262910798119
      a1.box = Rectangle.new
      a1.box.x = 375.89276123046875
      a1.box.y = 59.388263702392578
      a1.box.width = 88.7330551147461
      a1.box.height = 37.7290153503418
      a1.page_number = 0
      a1.pen_color = 1201033
      a1.pen_style = 0
      a1.pen_width = 1
      a1.type = "Distance"
      a1.creator_name = "Anonym A."

      a2 = AnnotationInfo.new
      a2.annotation_position = Point.new
      a2.annotation_position.x = 852
      a2.annotation_position.y = 59.388262910798119
      a2.box = Rectangle.new
      a2.box.x = 375.89276123046875
      a2.box.y = 59.388263702392578
      a2.box.width = 88.7330551147461
      a2.box.height = 37.7290153503418
      a2.page_number = 2
      a2.pen_color = 1201033
      a2.pen_style = 0
      a2.pen_width = 1
      a2.type = "Area"
      a2.creator_name = "Anonym A."

      a3 = AnnotationInfo.new
      a3.annotation_position = Point.new
      a3.annotation_position.x = 852
      a3.annotation_position.y = 59.388262910798119
      a3.box = Rectangle.new
      a3.box.x = 375.89276123046875
      a3.box.y = 59.388263702392578
      a3.box.width = 88.7330551147461
      a3.box.height = 37.7290153503418
      a3.page_number = 4
      a3.type = "Point"
      a3.creator_name = "Anonym A."

      a4 = AnnotationInfo.new
      a4.annotation_position = Point.new
      a4.annotation_position.x = 852
      a4.annotation_position.y = 59.388262910798119
      a4.box = Rectangle.new
      a4.box.x = 375.89276123046875
      a4.box.y = 59.388263702392578
      a4.box.width = 88.7330551147461
      a4.box.height = 37.7290153503418
      a4.page_number = 5
      a4.pen_color = 1201033
      a4.pen_style = 0
      a4.pen_width = 1
      a4.type = "Arrow"
      a4.creator_name = "Anonym A."      

      [a1, a2, a3, a4]
    end    

  end
end
