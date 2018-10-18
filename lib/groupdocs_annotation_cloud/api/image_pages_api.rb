# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="imagePages.rb">
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
# -----------------------------------------------------------------------------------

require 'uri'
require 'date'

module GroupDocsAnnotationCloud
  #
  # GroupDocs.Annotation Cloud API
  #
  class ImagePagesApi
    attr_accessor :config

    #make ImagePagesApi.new private 
    private_class_method :new

    # Initializes new instance of ImagePagesApi
    #
    # @param [config] Configuration 
    # @return [ImagePagesApi] New instance of ImagePagesApi
    def initialize(config)
      @config = config
      @api_client = ApiClient.new(config)
      require_all '../models/requests'

      @access_token = nil
    end

    # Initializes new instance of ImagePagesApi
    #
    # @param [app_sid] Application identifier (App SID)
    # @param [app_key] Application private key (App Key)
    # @return [ImagePagesApi] New instance of ImagePagesApi
    def self.from_keys(app_sid, app_key)
      config = Configuration.new(app_sid, app_key)
      return new(config)
    end

    # Initializes new instance of ImagePagesApi
    #
    # @param [config] Configuration 
    # @return [ImagePagesApi] New instance of ImagePagesApi
    def self.from_config(config)
      return new(config)
    end

    # Removes document's pages as image.
    # 
    # @param request delete_pages_request
    # @return [File]
    def delete_pages(request)
      data, _status_code, _headers = delete_pages_with_http_info(request)
      data
    end

    # Removes document's pages as image.
    # 
    # @param request delete_pages_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def delete_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeletePagesRequest

      @api_client.config.logger.debug 'Calling API: ImagePagesApi.delete_pages ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling ImagePagesApi.delete_pages' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/annotation/{name}/image/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ImagePagesApi#delete_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Downloads document's page as image.
    # 
    # @param request get_page_request
    # @return [ImagePage]
    def get_page(request)
      data, _status_code, _headers = get_page_with_http_info(request)
      data
    end

    # Downloads document's page as image.
    # 
    # @param request get_page_request
    # @return [Array<(ImagePage, Fixnum, Hash)>]
    # ImagePage data, response status code and response headers
    def get_page_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetPageRequest

      @api_client.config.logger.debug 'Calling API: ImagePagesApi.get_page ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling ImagePagesApi.get_page' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'page_number' is set
      raise ArgumentError, 'Missing the required parameter page_number when calling ImagePagesApi.get_page' if @api_client.config.client_side_validation && request.page_number.nil?
      # resource path
      local_var_path = '/annotation/{name}/image/pages/{pageNumber}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageNumber') + '}', request.page_number.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

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
                                                        return_type: 'ImagePage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ImagePagesApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves document's pages as images.
    # 
    # @param request get_pages_request
    # @return [ImagePages]
    def get_pages(request)
      data, _status_code, _headers = get_pages_with_http_info(request)
      data
    end

    # Retrieves document's pages as images.
    # 
    # @param request get_pages_request
    # @return [Array<(ImagePages, Fixnum, Hash)>]
    # ImagePages data, response status code and response headers
    def get_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetPagesRequest

      @api_client.config.logger.debug 'Calling API: ImagePagesApi.get_pages ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling ImagePagesApi.get_pages' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/annotation/{name}/image/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

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
                                                        return_type: 'ImagePages')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ImagePagesApi#get_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates document's pages as image.
    # 
    # @param request post_pages_request
    # @return [ImagePages]
    def post_pages(request)
      data, _status_code, _headers = post_pages_with_http_info(request)
      data
    end

    # Creates document's pages as image.
    # 
    # @param request post_pages_request
    # @return [Array<(ImagePages, Fixnum, Hash)>]
    # ImagePages data, response status code and response headers
    def post_pages_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostPagesRequest

      @api_client.config.logger.debug 'Calling API: ImagePagesApi.post_pages ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling ImagePagesApi.post_pages' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/annotation/{name}/image/pages'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('Folder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? ('{' + downcase_first_letter('Password') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'ImagePages')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ImagePagesApi#post_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        else 
          access_token_expired = @access_token_expires_at < DateTime.now
          if access_token_expired then
            reset_access_token
          end
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

        request_url = "/oauth2/token"
        post_data = "grant_type=client_credentials&client_id=#{@config.app_sid}&client_secret=#{@config.app_key}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]
        @refresh_token = data[:refresh_token]

        expires_in_seconds = data[:expires_in].to_i - 5 * 60 
        expires_in_days = Rational(expires_in_seconds, 60 * 60 * 24)
        @access_token_expires_at = DateTime.now + expires_in_days
    end

    #
    # Resets access token
    #
    private def reset_access_token
        auth_config = Configuration.new(@config.app_sid, @config.app_key)
        auth_config.api_base_url = @config.api_base_url
        auth_config.debugging = @config.debugging
        auth_config.logger = @config.logger
        auth_config.temp_folder_path = @config.temp_folder_path
        auth_config.client_side_validation = @config.client_side_validation
        auth_config.api_version = ''

        auth_api_client = ApiClient.new(auth_config)

        request_url = "/oauth2/token"
        post_data = "grant_type=refresh_token&refresh_token=#{@refresh_token}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]
        @refresh_token = data[:refresh_token]

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
