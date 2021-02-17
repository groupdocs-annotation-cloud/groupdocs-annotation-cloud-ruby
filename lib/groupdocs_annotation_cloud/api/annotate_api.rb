# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="annotate.rb">
#   Copyright (c) 2003-2021 Aspose Pty Ltd
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

    # Adds annotations to document and saves output file into cloud storage
    # 
    # @param request annotate_request
    # @return [AnnotationApiLink]
    def annotate(request)
      data, _status_code, _headers = annotate_with_http_info(request)
      data
    end

    # Adds annotations to document and saves output file into cloud storage
    # 
    # @param request annotate_request
    # @return [Array<(AnnotationApiLink, Fixnum, Hash)>]
    # AnnotationApiLink data, response status code and response headers
    def annotate_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? AnnotateRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.annotate ...' if @api_client.config.debugging
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling AnnotateApi.annotate' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/annotation/add'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'AnnotationApiLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#annotate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds annotations to document and returns output file
    # 
    # @param request annotate_direct_request
    # @return [File]
    def annotate_direct(request)
      data, _status_code, _headers = annotate_direct_with_http_info(request)
      data
    end

    # Adds annotations to document and returns output file
    # 
    # @param request annotate_direct_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def annotate_direct_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? AnnotateDirectRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.annotate_direct ...' if @api_client.config.debugging
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling AnnotateApi.annotate_direct' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/annotation/add'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#annotate_direct\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Extracts annotations from document
    # 
    # @param request extract_request
    # @return [Array<AnnotationInfo>]
    def extract(request)
      data, _status_code, _headers = extract_with_http_info(request)
      data
    end

    # Extracts annotations from document
    # 
    # @param request extract_request
    # @return [Array<(Array<AnnotationInfo>, Fixnum, Hash)>]
    # Array<AnnotationInfo> data, response status code and response headers
    def extract_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ExtractRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.extract ...' if @api_client.config.debugging
      # verify the required parameter 'file_info' is set
      raise ArgumentError, 'Missing the required parameter file_info when calling AnnotateApi.extract' if @api_client.config.client_side_validation && request.file_info.nil?
      # resource path
      local_var_path = '/annotation/extract'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.file_info)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'Array<AnnotationInfo>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#extract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes annotations from document
    # 
    # @param request remove_annotations_request
    # @return [AnnotationApiLink]
    def remove_annotations(request)
      data, _status_code, _headers = remove_annotations_with_http_info(request)
      data
    end

    # Removes annotations from document
    # 
    # @param request remove_annotations_request
    # @return [Array<(AnnotationApiLink, Fixnum, Hash)>]
    # AnnotationApiLink data, response status code and response headers
    def remove_annotations_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RemoveAnnotationsRequest

      @api_client.config.logger.debug 'Calling API: AnnotateApi.remove_annotations ...' if @api_client.config.debugging
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling AnnotateApi.remove_annotations' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/annotation/remove'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'AnnotationApiLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        AnnotateApi#remove_annotations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
 # <copyright company="Aspose Pty Ltd" file="annotate_request.rb">
 #   Copyright (c) 2003-2021 Aspose Pty Ltd
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
  # Request model for annotate operation.
  #
  class AnnotateRequest

        # Annotation options
        attr_accessor :options
	
        #
        # Initializes a new instance.
        # @param options Annotation options
        def initialize(options)
           self.options = options
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="annotate_direct_request.rb">
 #   Copyright (c) 2003-2021 Aspose Pty Ltd
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
  # Request model for annotate_direct operation.
  #
  class AnnotateDirectRequest

        # Annotation options
        attr_accessor :options
	
        #
        # Initializes a new instance.
        # @param options Annotation options
        def initialize(options)
           self.options = options
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="extract_request.rb">
 #   Copyright (c) 2003-2021 Aspose Pty Ltd
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
  # Request model for extract operation.
  #
  class ExtractRequest

        # Input file information
        attr_accessor :file_info
	
        #
        # Initializes a new instance.
        # @param file_info Input file information
        def initialize(file_info)
           self.file_info = file_info
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="remove_annotations_request.rb">
 #   Copyright (c) 2003-2021 Aspose Pty Ltd
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
  # Request model for remove_annotations operation.
  #
  class RemoveAnnotationsRequest

        # Remove annotations options
        attr_accessor :options
	
        #
        # Initializes a new instance.
        # @param options Remove annotations options
        def initialize(options)
           self.options = options
        end
  end
end
