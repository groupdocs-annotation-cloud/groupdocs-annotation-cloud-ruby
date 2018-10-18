 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="get_pdf_request.rb">
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
 # --------------------------------------------------------------------------------------------------------------------
 #

module GroupDocsAnnotationCloud

  #
  # Request model for get_pdf operation.
  #
  class GetPdfRequest

    # The document name.
    attr_accessor :name
    # The folder name.
    attr_accessor :folder
    # The document password.
    attr_accessor :password

    #
    # Initializes a new instance.
    # @param name The document name.
    # @param folder The folder name.
    # @param password The document password.
    def initialize(name, folder = nil, password = nil)
      self.name = name
      self.folder = folder
      self.password = password
    end
  end
end
