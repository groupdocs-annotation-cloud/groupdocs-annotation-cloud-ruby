# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="preview.rb">
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
  class PreviewApi
    attr_accessor :config

    #make PreviewApi.new private 
    private_class_method :new

    # Initializes new instance of PreviewApi
    #
    # @param [config] Configuration 
    # @return [PreviewApi] New instance of PreviewApi
    def initialize(config)
      @config = config
      @api_client = ApiClient.new(config)
      @access_token = nil
    end

    # Initializes new instance of PreviewApi
    #
    # @param [app_sid] Application identifier (App SID)
    # @param [app_key] Application private key (App Key)
    # @return [PreviewApi] New instance of PreviewApi
    def self.from_keys(app_sid, app_key)
      config = Configuration.new(app_sid, app_key)
      return new(config)
    end

    # Initializes new instance of PreviewApi
    #
    # @param [config] Configuration 
    # @return [PreviewApi] New instance of PreviewApi
    def self.from_config(config)
      return new(config)
    end

    # Removes document's pages image representations
    # 
    # @param request delete_pages_request
    # @return [nil]
    def delete_pages(request)
      delete_pages_with_http_info(request)
      nil
    end

    # Removes document&#39;s pages image representations
    # 
    # @param request delete_pages_request
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def delete_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeletePagesRequest

      @api_client.config.logger.debug 'Calling API: PreviewApi.delete_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_path' is set
      raise ArgumentError, 'Missing the required parameter file_path when calling PreviewApi.delete_pages' if @api_client.config.client_side_validation && request.file_path.nil?
      # resource path
      local_var_path = '/annotation/pages'

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
        PreviewApi#delete_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Generates image representations from documents pages
    # 
    # @param request get_pages_request
    # @return [PageImages]
    def get_pages(request)
      data, _status_code, _headers = get_pages_with_http_info(request)
      data
    end

    # Generates image representations from documents pages
    # 
    # @param request get_pages_request
    # @return [Array<(PageImages, Fixnum, Hash)>]
    # PageImages data, response status code and response headers
    def get_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetPagesRequest

      @api_client.config.logger.debug 'Calling API: PreviewApi.get_pages ...' if @api_client.config.debugging
      # verify the required parameter 'file_path' is set
      raise ArgumentError, 'Missing the required parameter file_path when calling PreviewApi.get_pages' if @api_client.config.client_side_validation && request.file_path.nil?
      # resource path
      local_var_path = '/annotation/pages'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('filePath')] = request.file_path

      if local_var_path.include? ('{' + downcase_first_letter('countPagesToConvert') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('countPagesToConvert') + '}', request.count_pages_to_convert.to_s)
      else
        query_params[downcase_first_letter('countPagesToConvert')] = request.count_pages_to_convert unless request.count_pages_to_convert.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('pageNumber') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('pageNumber') + '}', request.page_number.to_s)
      else
        query_params[downcase_first_letter('pageNumber')] = request.page_number unless request.page_number.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('pageNumbersToConvert') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('pageNumbersToConvert') + '}', request.page_numbers_to_convert.to_s)
      else
        query_params[downcase_first_letter('pageNumbersToConvert')] = @api_client.build_collection_param(request.page_numbers_to_convert, :multi) unless request.page_numbers_to_convert.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('withoutAnnotations') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('withoutAnnotations') + '}', request.without_annotations.to_s)
      else
        query_params[downcase_first_letter('withoutAnnotations')] = request.without_annotations unless request.without_annotations.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('enableCaching') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('enableCaching') + '}', request.enable_caching.to_s)
      else
        query_params[downcase_first_letter('enableCaching')] = request.enable_caching unless request.enable_caching.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('cacheStoragePath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('cacheStoragePath') + '}', request.cache_storage_path.to_s)
      else
        query_params[downcase_first_letter('cacheStoragePath')] = request.cache_storage_path unless request.cache_storage_path.nil?
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
                                                        return_type: 'PageImages')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        PreviewApi#get_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
 # <copyright company="Aspose Pty Ltd" file="delete_pages_request.rb">
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
  # Request model for delete_pages operation.
  #
  class DeletePagesRequest

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
 # <copyright company="Aspose Pty Ltd" file="get_pages_request.rb">
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
  # Request model for get_pages operation.
  #
  class GetPagesRequest

        # Document path in storage
        attr_accessor :file_path
        # The count pages to convert
        attr_accessor :count_pages_to_convert
        # The start page number
        attr_accessor :page_number
        # The list of page numbers to convert
        attr_accessor :page_numbers_to_convert
        # If true returns specific pages without annotations
        attr_accessor :without_annotations
        # Indicates whether to use previously cached document or not
        attr_accessor :enable_caching
        # The cache storage path
        attr_accessor :cache_storage_path
        # Source document opening password
        attr_accessor :password
	
        #
        # Initializes a new instance.
        # @param file_path Document path in storage
        # @param count_pages_to_convert The count pages to convert
        # @param page_number The start page number
        # @param page_numbers_to_convert The list of page numbers to convert
        # @param without_annotations If true returns specific pages without annotations
        # @param enable_caching Indicates whether to use previously cached document or not
        # @param cache_storage_path The cache storage path
        # @param password Source document opening password
        def initialize(file_path, count_pages_to_convert = nil, page_number = nil, page_numbers_to_convert = nil, without_annotations = nil, enable_caching = nil, cache_storage_path = nil, password = nil)
           self.file_path = file_path
           self.count_pages_to_convert = count_pages_to_convert
           self.page_number = page_number
           self.page_numbers_to_convert = page_numbers_to_convert
           self.without_annotations = without_annotations
           self.enable_caching = enable_caching
           self.cache_storage_path = cache_storage_path
           self.password = password
        end
  end
end
