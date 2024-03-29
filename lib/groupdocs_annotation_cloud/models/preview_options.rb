 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="preview_options.rb">
 #   Copyright (c) 2003-2023 Aspose Pty Ltd
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

require 'date'

module GroupDocsAnnotationCloud
  # Represents options for GetPages API method
  class PreviewOptions

    # Input document description
    attr_accessor :file_info

    # Preview format. Supported values are: PNG, JPEG or BMP. Default value is PNG.
    attr_accessor :format

    # Page numbers to preview. All pages proceeded if not specified.
    attr_accessor :page_numbers

    # Preview image width. Not required. Default width used if not specified or 0.
    attr_accessor :width

    # Preview image height. Not required. Default width used if not specified or 0.
    attr_accessor :height

    # Gets or sets the resolution for generated images, in dots per inch. The default value is 96.
    attr_accessor :resolution

    # Render document comments. Default value is 'false'.
    attr_accessor :render_comments

    # The property that controls whether annotations will be generated on the preview. Default State - true.
    attr_accessor :render_annotations

    # The path to directory containing custom fonts in storage
    attr_accessor :fonts_path
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_info' => :'FileInfo',
        :'format' => :'Format',
        :'page_numbers' => :'PageNumbers',
        :'width' => :'Width',
        :'height' => :'Height',
        :'resolution' => :'Resolution',
        :'render_comments' => :'RenderComments',
        :'render_annotations' => :'RenderAnnotations',
        :'fonts_path' => :'FontsPath'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file_info' => :'FileInfo',
        :'format' => :'String',
        :'page_numbers' => :'Array<Integer>',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'resolution' => :'Integer',
        :'render_comments' => :'BOOLEAN',
        :'render_annotations' => :'BOOLEAN',
        :'fonts_path' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'FileInfo')
        self.file_info = attributes[:'FileInfo']
      end

      if attributes.key?(:'Format')
        self.format = attributes[:'Format']
      end

      if attributes.key?(:'PageNumbers')
        if (value = attributes[:'PageNumbers']).is_a?(Array)
          self.page_numbers = value
        end
      end

      if attributes.key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.key?(:'Resolution')
        self.resolution = attributes[:'Resolution']
      end

      if attributes.key?(:'RenderComments')
        self.render_comments = attributes[:'RenderComments']
      end

      if attributes.key?(:'RenderAnnotations')
        self.render_annotations = attributes[:'RenderAnnotations']
      end

      if attributes.key?(:'FontsPath')
        self.fonts_path = attributes[:'FontsPath']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @format.nil?
        invalid_properties.push("invalid value for 'format', format cannot be nil.")
      end

      if @width.nil?
        invalid_properties.push("invalid value for 'width', width cannot be nil.")
      end

      if @height.nil?
        invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end

      if @resolution.nil?
        invalid_properties.push("invalid value for 'resolution', resolution cannot be nil.")
      end

      if @render_comments.nil?
        invalid_properties.push("invalid value for 'render_comments', render_comments cannot be nil.")
      end

      if @render_annotations.nil?
        invalid_properties.push("invalid value for 'render_annotations', render_annotations cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @format.nil?
      format_validator = EnumAttributeValidator.new('String', ["PNG", "JPEG", "BMP"])
      return false unless format_validator.valid?(@format)
      return false if @width.nil?
      return false if @height.nil?
      return false if @resolution.nil?
      return false if @render_comments.nil?
      return false if @render_annotations.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format Object to be assigned
    def format=(format)
      validator = EnumAttributeValidator.new('String', ["PNG", "JPEG", "BMP"])
      if format.to_i == 0
        unless validator.valid?(format)
          # raise ArgumentError, "invalid value for 'format', must be one of #{validator.allowable_values}."
           @format = validator.allowable_values[format.to_i]
        end
        @format = format
      else
        @format = validator.allowable_values[format.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          file_info == other.file_info &&
          format == other.format &&
          page_numbers == other.page_numbers &&
          width == other.width &&
          height == other.height &&
          resolution == other.resolution &&
          render_comments == other.render_comments &&
          render_annotations == other.render_annotations &&
          fonts_path == other.fonts_path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [file_info, format, page_numbers, width, height, resolution, render_comments, render_annotations, fonts_path].hash
    end

    # Downcases first letter.
    # @return downcased string
    def uncap(str)
      str[0, 1].downcase + str[1..-1]
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        pname = uncap(self.class.attribute_map[key]).intern
        value = attributes[pname]
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not                    
          if value.is_a?(Array)
            self.send("#{key}=", value.map { |v| _deserialize($1, v) })
          end
        elsif !value.nil?
          self.send("#{key}=", _deserialize(type, value))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Date.parse value
      when :Date
        Date.parse value
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        temp_model = GroupDocsAnnotationCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
