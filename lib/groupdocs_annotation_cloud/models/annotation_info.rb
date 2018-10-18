 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="annotation_info.rb">
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

require 'date'

module GroupDocsAnnotationCloud
  
  class AnnotationInfo

    # Gets or sets the unique identifier.
    attr_accessor :guid

    # Gets or sets the document unique identifier.
    attr_accessor :document_guid

    # Gets or sets the text.
    attr_accessor :text

    # Gets or sets the creator unique identifier.
    attr_accessor :creator_guid

    # Gets or sets the name of the creator.
    attr_accessor :creator_name

    # Gets or sets the creator email.
    attr_accessor :creator_email

    # Gets or sets the box.
    attr_accessor :box

    # Gets or sets the page number.
    attr_accessor :page_number

    # Gets or sets the annotation position.
    attr_accessor :annotation_position

    # Gets or sets the SVG path.
    attr_accessor :svg_path

    # Gets or sets the type.
    attr_accessor :type

    # Gets or sets the access.
    attr_accessor :access

    # Gets or sets the replies.
    attr_accessor :replies

    # Gets or sets the created on.
    attr_accessor :created_on

    # Gets or sets the color of the font.
    attr_accessor :font_color

    # Gets or sets the color of the pen.
    attr_accessor :pen_color

    # Gets or sets the width of the pen.
    attr_accessor :pen_width

    # Gets or sets the pen style.
    attr_accessor :pen_style

    # Gets or sets the color of the background.
    attr_accessor :background_color

    # Gets or sets the field text.
    attr_accessor :field_text

    # Gets or sets the font family.
    attr_accessor :font_family

    # Gets or sets the size of the font.
    attr_accessor :font_size
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
        :'guid' => :'guid',
        :'document_guid' => :'documentGuid',
        :'text' => :'text',
        :'creator_guid' => :'creatorGuid',
        :'creator_name' => :'creatorName',
        :'creator_email' => :'creatorEmail',
        :'box' => :'box',
        :'page_number' => :'pageNumber',
        :'annotation_position' => :'annotationPosition',
        :'svg_path' => :'svgPath',
        :'type' => :'type',
        :'access' => :'access',
        :'replies' => :'replies',
        :'created_on' => :'createdOn',
        :'font_color' => :'fontColor',
        :'pen_color' => :'penColor',
        :'pen_width' => :'penWidth',
        :'pen_style' => :'penStyle',
        :'background_color' => :'backgroundColor',
        :'field_text' => :'fieldText',
        :'font_family' => :'fontFamily',
        :'font_size' => :'fontSize'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'guid' => :'String',
        :'document_guid' => :'Integer',
        :'text' => :'String',
        :'creator_guid' => :'String',
        :'creator_name' => :'String',
        :'creator_email' => :'String',
        :'box' => :'Rectangle',
        :'page_number' => :'Integer',
        :'annotation_position' => :'Point',
        :'svg_path' => :'String',
        :'type' => :'String',
        :'access' => :'String',
        :'replies' => :'Array<AnnotationReplyInfo>',
        :'created_on' => :'DateTime',
        :'font_color' => :'Integer',
        :'pen_color' => :'Integer',
        :'pen_width' => :'Integer',
        :'pen_style' => :'Integer',
        :'background_color' => :'Integer',
        :'field_text' => :'String',
        :'font_family' => :'String',
        :'font_size' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Guid')
        self.guid = attributes[:'Guid']
      end

      if attributes.key?(:'DocumentGuid')
        self.document_guid = attributes[:'DocumentGuid']
      end

      if attributes.key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.key?(:'CreatorGuid')
        self.creator_guid = attributes[:'CreatorGuid']
      end

      if attributes.key?(:'CreatorName')
        self.creator_name = attributes[:'CreatorName']
      end

      if attributes.key?(:'CreatorEmail')
        self.creator_email = attributes[:'CreatorEmail']
      end

      if attributes.key?(:'Box')
        self.box = attributes[:'Box']
      end

      if attributes.key?(:'PageNumber')
        self.page_number = attributes[:'PageNumber']
      end

      if attributes.key?(:'AnnotationPosition')
        self.annotation_position = attributes[:'AnnotationPosition']
      end

      if attributes.key?(:'SvgPath')
        self.svg_path = attributes[:'SvgPath']
      end

      if attributes.key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.key?(:'Access')
        self.access = attributes[:'Access']
      end

      if attributes.key?(:'Replies')
        if (value = attributes[:'Replies']).is_a?(Array)
          self.replies = value
        end
      end

      if attributes.key?(:'CreatedOn')
        self.created_on = attributes[:'CreatedOn']
      end

      if attributes.key?(:'FontColor')
        self.font_color = attributes[:'FontColor']
      end

      if attributes.key?(:'PenColor')
        self.pen_color = attributes[:'PenColor']
      end

      if attributes.key?(:'PenWidth')
        self.pen_width = attributes[:'PenWidth']
      end

      if attributes.key?(:'PenStyle')
        self.pen_style = attributes[:'PenStyle']
      end

      if attributes.key?(:'BackgroundColor')
        self.background_color = attributes[:'BackgroundColor']
      end

      if attributes.key?(:'FieldText')
        self.field_text = attributes[:'FieldText']
      end

      if attributes.key?(:'FontFamily')
        self.font_family = attributes[:'FontFamily']
      end

      if attributes.key?(:'FontSize')
        self.font_size = attributes[:'FontSize']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @document_guid.nil?
        invalid_properties.push("invalid value for 'document_guid', document_guid cannot be nil.")
      end

      if @box.nil?
        invalid_properties.push("invalid value for 'box', box cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @created_on.nil?
        invalid_properties.push("invalid value for 'created_on', created_on cannot be nil.")
      end

      if @font_color.nil?
        invalid_properties.push("invalid value for 'font_color', font_color cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @document_guid.nil?
      return false if @box.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["Text", "Area", "Point", "TextStrikeout", "Polyline", "TextField", "Watermark", "TextReplacement", "Arrow", "TextRedaction", "ResourcesRedaction", "TextUnderline", "Distance"])
      return false unless type_validator.valid?(@type)
      access_validator = EnumAttributeValidator.new('String', ["Public", "Private"])
      return false unless access_validator.valid?(@access)
      return false if @created_on.nil?
      return false if @font_color.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Text", "Area", "Point", "TextStrikeout", "Polyline", "TextField", "Watermark", "TextReplacement", "Arrow", "TextRedaction", "ResourcesRedaction", "TextUnderline", "Distance"])
      if validator.valid?(type)
        @type = type
      elsif type.to_i >= 0 && type.to_i < validator.allowable_values.count
        @type = validator.allowable_values[type.to_i]
      else
        raise ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] access Object to be assigned
    def access=(access)
      validator = EnumAttributeValidator.new('String', ["Public", "Private"])
      if validator.valid?(access)
        @access = access
      elsif access.to_i >= 0 && access.to_i < validator.allowable_values.count
        @access = validator.allowable_values[access.to_i]
      else
        raise ArgumentError, "invalid value for 'access', must be one of #{validator.allowable_values}."
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          guid == other.guid &&
          document_guid == other.document_guid &&
          text == other.text &&
          creator_guid == other.creator_guid &&
          creator_name == other.creator_name &&
          creator_email == other.creator_email &&
          box == other.box &&
          page_number == other.page_number &&
          annotation_position == other.annotation_position &&
          svg_path == other.svg_path &&
          type == other.type &&
          access == other.access &&
          replies == other.replies &&
          created_on == other.created_on &&
          font_color == other.font_color &&
          pen_color == other.pen_color &&
          pen_width == other.pen_width &&
          pen_style == other.pen_style &&
          background_color == other.background_color &&
          field_text == other.field_text &&
          font_family == other.font_family &&
          font_size == other.font_size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [guid, document_guid, text, creator_guid, creator_name, creator_email, box, page_number, annotation_position, svg_path, type, access, replies, created_on, font_color, pen_color, pen_width, pen_style, background_color, field_text, font_family, font_size].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
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
        if attr == :type
          validator = EnumAttributeValidator.new('String', ["Text", "Area", "Point", "TextStrikeout", "Polyline", "TextField", "Watermark", "TextReplacement", "Arrow", "TextRedaction", "ResourcesRedaction", "TextUnderline", "Distance"])
          value = validator.allowable_values.index(value)
          hash[param] = _to_hash(value)
        elsif attr == :access
          validator = EnumAttributeValidator.new('String', ["Public", "Private"])
          value = validator.allowable_values.index(value)
          hash[param] = _to_hash(value)
        else
          hash[param] = _to_hash(value)
        end
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
