 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="row_info.rb">
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

require 'date'

module GroupDocsAnnotationCloud
  # Describes text row information
  class RowInfo

    # Gets or sets the list of character coordinates
    attr_accessor :character_coordinates

    # Gets or sets the text line height
    attr_accessor :line_height

    # Gets or sets the x coordinate of the text line upper left corner
    attr_accessor :line_left

    # Gets or sets the y coordinate of the text line upper left corner
    attr_accessor :line_top

    # Gets or sets the text line width
    attr_accessor :line_width

    # Gets or sets the text
    attr_accessor :text

    # Gets or sets the list of text coordinates
    attr_accessor :text_coordinates

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'character_coordinates' => :'CharacterCoordinates',
        :'line_height' => :'LineHeight',
        :'line_left' => :'LineLeft',
        :'line_top' => :'LineTop',
        :'line_width' => :'LineWidth',
        :'text' => :'Text',
        :'text_coordinates' => :'TextCoordinates'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'character_coordinates' => :'Array<Float>',
        :'line_height' => :'Float',
        :'line_left' => :'Float',
        :'line_top' => :'Float',
        :'line_width' => :'Float',
        :'text' => :'String',
        :'text_coordinates' => :'Array<Float>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'CharacterCoordinates')
        if (value = attributes[:'CharacterCoordinates']).is_a?(Array)
          self.character_coordinates = value
        end
      end

      if attributes.key?(:'LineHeight')
        self.line_height = attributes[:'LineHeight']
      end

      if attributes.key?(:'LineLeft')
        self.line_left = attributes[:'LineLeft']
      end

      if attributes.key?(:'LineTop')
        self.line_top = attributes[:'LineTop']
      end

      if attributes.key?(:'LineWidth')
        self.line_width = attributes[:'LineWidth']
      end

      if attributes.key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.key?(:'TextCoordinates')
        if (value = attributes[:'TextCoordinates']).is_a?(Array)
          self.text_coordinates = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @line_height.nil?
        invalid_properties.push("invalid value for 'line_height', line_height cannot be nil.")
      end

      if @line_left.nil?
        invalid_properties.push("invalid value for 'line_left', line_left cannot be nil.")
      end

      if @line_top.nil?
        invalid_properties.push("invalid value for 'line_top', line_top cannot be nil.")
      end

      if @line_width.nil?
        invalid_properties.push("invalid value for 'line_width', line_width cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @line_height.nil?
      return false if @line_left.nil?
      return false if @line_top.nil?
      return false if @line_width.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          character_coordinates == other.character_coordinates &&
          line_height == other.line_height &&
          line_left == other.line_left &&
          line_top == other.line_top &&
          line_width == other.line_width &&
          text == other.text &&
          text_coordinates == other.text_coordinates
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [character_coordinates, line_height, line_left, line_top, line_width, text, text_coordinates].hash
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
