# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="annotate.rb">
#   Copyright (c) 2003-2019 Aspose Pty Ltd
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
# -----------------------------------------------------------------------------------

require 'uri'
require 'date'

module GroupDocsAnnotationCloud
  #
  # GroupDocs.Annotation Cloud API
  #
  class AnnotateApi
    attr_accessor :config

    #make AnnotateApi.new private 
    private_class_method :new

    # Initializes new instance of AnnotateApi
    #
    # @param [config] Configuration 
    # @return [AnnotateApi] New instance of AnnotateApi
    def initialize(config)
      @config = config
      @api_client = ApiClient.new(config)
      @access_token = nil
    end

    # Initializes new instance of AnnotateApi
    #
    # @param [app_sid] Application identifier (App SID)
    # @param [app_key] Application private key (App Key)
    # @return [AnnotateApi] New instance of AnnotateApi
    def self.from_keys(app_sid, app_key)
      config = Configuration.new(app_sid, app_key)
      return new(config)
    end

    # Initializes new instance of AnnotateApi
    #
    # @param [config] Configuration 
    # @return [AnnotateApi] New instance of AnnotateApi
    def self.from_config(config)
      return new(config)
    end

    # Removes annotations from document
    # 
    # @param request delete_annotations_request
    # @return [nil]
    def delete_annotations(request)
      delete_annotations_with_http_info(request)
      nil
    end

    # Removes annotations from document
    # 
    # @param request delete_annotations_request
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def delete_annotations_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteAnnotationsRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.delete_annotations ...' if @api_client.config.debugging
      # verify the required parameter 'file_path' is set
      raise ArgumentError, 'Missing the required parameter file_path when calling AnnotateApi.delete_annotations' if @api_client.config.client_side_validation && request.file_path.nil?
      # resource path
      local_var_path = '/annotation'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('filePath')] = request.file_path


      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#delete_annotations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document with annotations
    # 
    # @param request get_export_request
    # @return [File]
    def get_export(request)
      data, _status_code, _headers = get_export_with_http_info(request)
      data
    end

    # Retrieves document with annotations
    # 
    # @param request get_export_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def get_export_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetExportRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.get_export ...' if @api_client.config.debugging
      # verify the required parameter 'file_path' is set
      raise ArgumentError, 'Missing the required parameter file_path when calling AnnotateApi.get_export' if @api_client.config.client_side_validation && request.file_path.nil?
      # resource path
      local_var_path = '/annotation/result'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('filePath')] = request.file_path

      if local_var_path.include? ('{' + downcase_first_letter('annotationTypes') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('annotationTypes') + '}', request.annotation_types.to_s)
      else
        query_params[downcase_first_letter('annotationTypes')] = request.annotation_types unless request.annotation_types.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('annotatedPages') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('annotatedPages') + '}', request.annotated_pages.to_s)
      else
        query_params[downcase_first_letter('annotatedPages')] = request.annotated_pages unless request.annotated_pages.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('firstPage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('firstPage') + '}', request.first_page.to_s)
      else
        query_params[downcase_first_letter('firstPage')] = request.first_page unless request.first_page.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('lastPage') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('lastPage') + '}', request.last_page.to_s)
      else
        query_params[downcase_first_letter('lastPage')] = request.last_page unless request.last_page.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#get_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Extracts annotations from document
    # 
    # @param request get_import_request
    # @return [Array<AnnotationInfo>]
    def get_import(request)
      data, _status_code, _headers = get_import_with_http_info(request)
      data
    end

    # Extracts annotations from document
    # 
    # @param request get_import_request
    # @return [Array<(Array<AnnotationInfo>, Fixnum, Hash)>]
    # Array<AnnotationInfo> data, response status code and response headers
    def get_import_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetImportRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.get_import ...' if @api_client.config.debugging
      # verify the required parameter 'file_path' is set
      raise ArgumentError, 'Missing the required parameter file_path when calling AnnotateApi.get_import' if @api_client.config.client_side_validation && request.file_path.nil?
      # resource path
      local_var_path = '/annotation'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('filePath')] = request.file_path


      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'Array<AnnotationInfo>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#get_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves PDF version of document
    # 
    # @param request get_pdf_request
    # @return [File]
    def get_pdf(request)
      data, _status_code, _headers = get_pdf_with_http_info(request)
      data
    end

    # Retrieves PDF version of document
    # 
    # @param request get_pdf_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def get_pdf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetPdfRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.get_pdf ...' if @api_client.config.debugging
      # verify the required parameter 'file_path' is set
      raise ArgumentError, 'Missing the required parameter file_path when calling AnnotateApi.get_pdf' if @api_client.config.client_side_validation && request.file_path.nil?
      # resource path
      local_var_path = '/annotation/pdf'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('filePath')] = request.file_path


      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#get_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds annotations to document
    # 
    # @param request post_annotations_request
    # @return [nil]
    def post_annotations(request)
      post_annotations_with_http_info(request)
      nil
    end

    # Adds annotations to document
    # 
    # @param request post_annotations_request
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def post_annotations_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostAnnotationsRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.post_annotations ...' if @api_client.config.debugging
      # verify the required parameter 'file_path' is set
      raise ArgumentError, 'Missing the required parameter file_path when calling AnnotateApi.post_annotations' if @api_client.config.client_side_validation && request.file_path.nil?
      # verify the required parameter 'annotations' is set
      raise ArgumentError, 'Missing the required parameter annotations when calling AnnotateApi.post_annotations' if @api_client.config.client_side_validation && request.annotations.nil?
      # resource path
      local_var_path = '/annotation'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('filePath')] = request.file_path


      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.annotations)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#post_annotations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    #
    # Helper method to convert first letter to downcase
    #
    private def downcase_first_letter(str)
      value = str[0].downcase + str[1..-1]
      value
    end
                 
    #
    # Retrieves access token
    #
    private def get_access_token
        if @access_token.nil? then
          request_access_token
        end
        
        @access_token  
    end

    #
    # Gets a access token from server
    #
    private def request_access_token
        auth_config = Configuration.new(@config.app_sid, @config.app_key)
        auth_config.api_base_url = @config.api_base_url
        auth_config.debugging = @config.debugging
        auth_config.logger = @config.logger
        auth_config.temp_folder_path = @config.temp_folder_path
        auth_config.client_side_validation = @config.client_side_validation
        auth_config.api_version = ''

        auth_api_client = ApiClient.new(auth_config)

        request_url = "/connect/token"
        post_data = "grant_type=client_credentials&client_id=#{@config.app_sid}&client_secret=#{@config.app_key}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]

        expires_in_seconds = data[:expires_in].to_i - 5 * 60 
        expires_in_days = Rational(expires_in_seconds, 60 * 60 * 24)
        @access_token_expires_at = DateTime.now + expires_in_days
    end
    
    # requires all files inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    private def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="delete_annotations_request.rb">
 #   Copyright (c) 2003-2019 Aspose Pty Ltd
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
  # Request model for delete_annotations operation.
  #
  class DeleteAnnotationsRequest

        # Document path in storage
        attr_accessor :file_path
	
        #
        # Initializes a new instance.
        # @param file_path Document path in storage
        def initialize(file_path)
           self.file_path = file_path
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="get_export_request.rb">
 #   Copyright (c) 2003-2019 Aspose Pty Ltd
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
  # Request model for get_export operation.
  #
  class GetExportRequest

        # Document path in storage
        attr_accessor :file_path
        # Annotation types that will be exported. All annotation types will be exported if not specified
        attr_accessor :annotation_types
        # Indicates whether to export only annotated pages
        attr_accessor :annotated_pages
        # Determines number of first exported page
        attr_accessor :first_page
        # Determines number of last exported page
        attr_accessor :last_page
        # Source document password
        attr_accessor :password
	
        #
        # Initializes a new instance.
        # @param file_path Document path in storage
        # @param annotation_types Annotation types that will be exported. All annotation types will be exported if not specified
        # @param annotated_pages Indicates whether to export only annotated pages
        # @param first_page Determines number of first exported page
        # @param last_page Determines number of last exported page
        # @param password Source document password
        def initialize(file_path, annotation_types = nil, annotated_pages = nil, first_page = nil, last_page = nil, password = nil)
           self.file_path = file_path
           self.annotation_types = annotation_types
           self.annotated_pages = annotated_pages
           self.first_page = first_page
           self.last_page = last_page
           self.password = password
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="get_import_request.rb">
 #   Copyright (c) 2003-2019 Aspose Pty Ltd
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
  # Request model for get_import operation.
  #
  class GetImportRequest

        # Document path in storage
        attr_accessor :file_path
	
        #
        # Initializes a new instance.
        # @param file_path Document path in storage
        def initialize(file_path)
           self.file_path = file_path
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="get_pdf_request.rb">
 #   Copyright (c) 2003-2019 Aspose Pty Ltd
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

        # Path to document in storage
        attr_accessor :file_path
	
        #
        # Initializes a new instance.
        # @param file_path Path to document in storage
        def initialize(file_path)
           self.file_path = file_path
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="post_annotations_request.rb">
 #   Copyright (c) 2003-2019 Aspose Pty Ltd
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
  # Request model for post_annotations operation.
  #
  class PostAnnotationsRequest

        # Document path in storage
        attr_accessor :file_path
        # Array of annotation descriptions
        attr_accessor :annotations
	
        #
        # Initializes a new instance.
        # @param file_path Document path in storage
        # @param annotations Array of annotation descriptions
        def initialize(file_path, annotations)
           self.file_path = file_path
           self.annotations = annotations
        end
  end
end
