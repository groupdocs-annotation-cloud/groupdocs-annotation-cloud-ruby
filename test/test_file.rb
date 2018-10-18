#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_file.rb">
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
  class TestFile
    attr_accessor :file_name;
    attr_accessor :folder;
    attr_accessor :password;
    attr_accessor :url;
    attr_accessor :attachment_name;
    attr_accessor :attachment_password;

    def self.one_page_djvu
      f = TestFile.new
      f.file_name = "one-page.djvu"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_docx
      f = TestFile.new
      f.file_name = "one-page.docx"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_emlx
      f = TestFile.new
      f.file_name = "one-page.emlx"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_html
      f = TestFile.new
      f.file_name = "one-page.html"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_pdf
      f = TestFile.new
      f.file_name = "one-page.pdf"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_pptx
      f = TestFile.new
      f.file_name = "one-page.pptx"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_annotated_docx
      f = TestFile.new
      f.file_name = "one-page-annotated.docx"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_annotated_html
      f = TestFile.new
      f.file_name = "one-page-annotated.html"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_annotated_pdf
      f = TestFile.new
      f.file_name = "one-page-annotated.pdf"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.one_page_annotated_pptx
      f = TestFile.new
      f.file_name = "one-page-annotated.pptx"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.test_png
      f = TestFile.new
      f.file_name = "test.png"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.two_page_docx
      f = TestFile.new
      f.file_name = "two-page.docx"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation"
      f
    end

    def self.words_one_page_docx
      f = TestFile.new
      f.file_name = "one-page.docx"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation\\words"
      f
    end

    def self.words_two_page_docx
      f = TestFile.new
      f.file_name = "two-page.docx"
      f.folder = "gfc-testdata\\testsdata\\groupdocs.annotation\\words"
      f
    end
  end
end