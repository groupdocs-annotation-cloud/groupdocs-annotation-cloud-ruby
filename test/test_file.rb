#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_file.rb">
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
    class TestFile
        attr_accessor :file_name;
        attr_accessor :folder;
        attr_accessor :password;
        
        def path
            folder + file_name
        end       

        def self.OnePageCells
            f = TestFile.new
            f.file_name = "one-page.xlsx"
            f.folder = "cells\\"
            f
        end

        def self.TenPagesCells
            f = TestFile.new
            f.file_name = "ten-pages.xlsx"
            f.folder = "cells\\"
            f
        end

        def self.OnePagePasswordCells
            f = TestFile.new
            f.file_name = "one-page-password.xlsx"
            f.folder = "cells\\"
            f.password = "password"
            f
        end

        def self.OnePageDiagram
            f = TestFile.new
            f.file_name = "one-page.vsd"
            f.folder = "diagram\\"
            f
        end

        def self.TenPagesDiagram
            f = TestFile.new
            f.file_name = "ten-pages.vsd"
            f.folder = "diagram\\"
            f
        end

        def self.OnePageEmail
            f = TestFile.new
            f.file_name = "one-page.emlx"
            f.folder = "email\\"
            f
        end

        def self.OnePageHtml
            f = TestFile.new
            f.file_name = "one-page.html"
            f.folder = "html\\"
            f
        end

        def self.OnePageBmp
            f = TestFile.new
            f.file_name = "one-page.bmp"
            f.folder = "images\\"
            f
        end

        def self.OnePagePng
            f = TestFile.new
            f.file_name = "one-page.png"
            f.folder = "images\\"
            f
        end

        def self.OnePagePdf
            f = TestFile.new
            f.file_name = "one-page.pdf"
            f.folder = "pdf\\"
            f
        end

        def self.OnePagePasswordPdf
            f = TestFile.new
            f.file_name = "one-page-password.pdf"
            f.folder = "pdf\\"
            f.password = "password"
            f
        end

        def self.TenPagesPdf
            f = TestFile.new
            f.file_name = "ten-pages.pdf"
            f.folder = "pdf\\"
            f
        end       

        def self.OnePageSlides
            f = TestFile.new
            f.file_name = "one-page.pptx"
            f.folder = "slides\\"
            f
        end

        def self.OnePagePasswordSlides
            f = TestFile.new
            f.file_name = "one-page-password.pptx"
            f.folder = "slides\\"
            f.password = "password"
            f
        end

        def self.TenPagesSlides
            f = TestFile.new
            f.file_name = "ten-pages.pptx"
            f.folder = "slides\\"
            f
        end

        def self.OnePageWords
            f = TestFile.new
            f.file_name = "one-page.docx"
            f.folder = "words\\"
            f
        end

        def self.OnePagePasswordWords
            f = TestFile.new
            f.file_name = "one-page-password.docx"
            f.folder = "words\\"
            f.password = "password"
            f
        end

        def self.TenPagesWords
            f = TestFile.new
            f.file_name = "ten-pages.docx"
            f.folder = "words\\"
            f
        end      
        
        def self.InputWords
            f = TestFile.new
            f.file_name = "input.docx"
            f.folder = "input\\"
            f
        end        

        def self.InputCells
            f = TestFile.new
            f.file_name = "input.xlsx"
            f.folder = "input\\"
            f
        end  
        
        def self.InputEmail
            f = TestFile.new
            f.file_name = "input.eml"
            f.folder = "input\\"
            f
        end  
        
        def self.InputHtml
            f = TestFile.new
            f.file_name = "input.html"
            f.folder = "input\\"
            f
        end  
        
        def self.InputPdf
            f = TestFile.new
            f.file_name = "input.pdf"
            f.folder = "input\\"
            f
        end  
        
        def self.InputImage
            f = TestFile.new
            f.file_name = "input.png"
            f.folder = "input\\"
            f
        end  
        
        def self.InputPresentation
            f = TestFile.new
            f.file_name = "input.pptx"
            f.folder = "input\\"
            f
        end  
        
        def self.InputDiagram
            f = TestFile.new
            f.file_name = "input.vsdx"
            f.folder = "input\\"
            f
        end          

        def self.test_files_list_upload
            [
                self.OnePageCells,
                self.TenPagesCells,
                self.OnePagePasswordCells,                
                self.OnePageDiagram,
                self.TenPagesDiagram,
                self.OnePageEmail,
                self.OnePageHtml,
                self.OnePageBmp,
                self.OnePagePng,
                self.OnePagePdf,
                self.OnePagePasswordPdf,
                self.TenPagesPdf,
                self.OnePageSlides,
                self.OnePagePasswordSlides,
                self.TenPagesSlides,
                self.OnePageWords,
                self.OnePagePasswordWords,
                self.TenPagesWords,
                self.InputWords,
                self.InputCells,
                self.InputEmail,
                self.InputHtml,
                self.InputPdf,
                self.InputImage,
                self.InputPresentation,
                self.InputDiagram
            ]        
        end

        def self.test_files_annotate
            [
                self.OnePageCells,
                self.OnePagePasswordCells,                
                self.OnePageDiagram,
                self.OnePageBmp,
                self.OnePagePng,
                self.OnePagePdf,
                self.OnePagePasswordPdf,
                self.OnePageSlides,
                self.OnePagePasswordSlides,
                self.OnePageWords,
                self.OnePagePasswordWords
            ]        
        end        

        
        def self.test_files_list_many_pages
            [
                self.TenPagesCells,
                self.TenPagesDiagram,
                self.TenPagesSlides,
                self.TenPagesWords
            ]        
        end

        def self.test_files_with_annotations
            [
                self.InputWords,
                self.InputCells,
                self.InputEmail,
                self.InputHtml,
                self.InputPdf,
                self.InputImage,
                self.InputPresentation,
                self.InputDiagram
            ]        
        end        
    end
end