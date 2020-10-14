 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="annotation_info.rb">
 #   Copyright (c) 2003-2020 Aspose Pty Ltd
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
  # Describes annotation properties
  class AnnotationInfo

    # Gets or sets the unique identifier
    attr_accessor :id

    # Gets or sets the annotation text
    attr_accessor :text

    # GGets or sets text to be replaced
    attr_accessor :text_to_replace

    # Gets or sets text horizontal alignment
    attr_accessor :horizontal_alignment

    # Gets or sets text vertical alignment
    attr_accessor :vertical_alignment

    # Gets or sets the creator unique identifier
    attr_accessor :creator_id

    # Gets or sets the name of the creator
    attr_accessor :creator_name

    # Gets or sets the creator's email
    attr_accessor :creator_email

    # Gets or sets the box where annotation will be placed
    attr_accessor :box

    # Gets or sets collection of points that describe rectangles with text
    attr_accessor :points

    # Gets or sets the number of page where annotation will be placed
    attr_accessor :page_number

    # Gets or sets the annotation position
    attr_accessor :annotation_position

    # Gets or sets the annotation SVG path
    attr_accessor :svg_path

    # Gets or sets the annotation type
    attr_accessor :type

    # Gets or sets the array of annotation replies
    attr_accessor :replies

    # Gets or sets the annotation created on date
    attr_accessor :created_on

    # Gets or sets the annotation's font color
    attr_accessor :font_color

    # Gets or sets the annotation's pen color
    attr_accessor :pen_color

    # Gets or sets the annotation's pen width
    attr_accessor :pen_width

    # Gets or sets the annotation's pen style
    attr_accessor :pen_style

    # Gets or sets the annotation's background color 
    attr_accessor :background_color

    # Gets or sets the annotation's font family
    attr_accessor :font_family

    # Gets or sets the annotation's font size 
    attr_accessor :font_size

    # Gets or sets the annotation's opacity
    attr_accessor :opacity

    # Gets or sets the watermark annotation's rotation angle
    attr_accessor :angle

    # Gets or sets annotation link url
    attr_accessor :url

    # Gets or sets image file path in cloud storage, for Image annotations
    attr_accessor :image_path
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
        :'id' => :'Id',
        :'text' => :'Text',
        :'text_to_replace' => :'TextToReplace',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'vertical_alignment' => :'VerticalAlignment',
        :'creator_id' => :'CreatorId',
        :'creator_name' => :'CreatorName',
        :'creator_email' => :'CreatorEmail',
        :'box' => :'Box',
        :'points' => :'Points',
        :'page_number' => :'PageNumber',
        :'annotation_position' => :'AnnotationPosition',
        :'svg_path' => :'SvgPath',
        :'type' => :'Type',
        :'replies' => :'Replies',
        :'created_on' => :'CreatedOn',
        :'font_color' => :'FontColor',
        :'pen_color' => :'PenColor',
        :'pen_width' => :'PenWidth',
        :'pen_style' => :'PenStyle',
        :'background_color' => :'BackgroundColor',
        :'font_family' => :'FontFamily',
        :'font_size' => :'FontSize',
        :'opacity' => :'Opacity',
        :'angle' => :'Angle',
        :'url' => :'Url',
        :'image_path' => :'ImagePath'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'text' => :'String',
        :'text_to_replace' => :'String',
        :'horizontal_alignment' => :'String',
        :'vertical_alignment' => :'String',
        :'creator_id' => :'Integer',
        :'creator_name' => :'String',
        :'creator_email' => :'String',
        :'box' => :'Rectangle',
        :'points' => :'Array<Point>',
        :'page_number' => :'Integer',
        :'annotation_position' => :'Point',
        :'svg_path' => :'String',
        :'type' => :'String',
        :'replies' => :'Array<AnnotationReplyInfo>',
        :'created_on' => :'DateTime',
        :'font_color' => :'Integer',
        :'pen_color' => :'Integer',
        :'pen_width' => :'Integer',
        :'pen_style' => :'String',
        :'background_color' => :'Integer',
        :'font_family' => :'String',
        :'font_size' => :'Float',
        :'opacity' => :'Float',
        :'angle' => :'Float',
        :'url' => :'String',
        :'image_path' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.key?(:'TextToReplace')
        self.text_to_replace = attributes[:'TextToReplace']
      end

      if attributes.key?(:'HorizontalAlignment')
        self.horizontal_alignment = attributes[:'HorizontalAlignment']
      end

      if attributes.key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

      if attributes.key?(:'CreatorId')
        self.creator_id = attributes[:'CreatorId']
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

      if attributes.key?(:'Points')
        if (value = attributes[:'Points']).is_a?(Array)
          self.points = value
        end
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

      if attributes.key?(:'FontFamily')
        self.font_family = attributes[:'FontFamily']
      end

      if attributes.key?(:'FontSize')
        self.font_size = attributes[:'FontSize']
      end

      if attributes.key?(:'Opacity')
        self.opacity = attributes[:'Opacity']
      end

      if attributes.key?(:'Angle')
        self.angle = attributes[:'Angle']
      end

      if attributes.key?(:'Url')
        self.url = attributes[:'Url']
      end

      if attributes.key?(:'ImagePath')
        self.image_path = attributes[:'ImagePath']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @horizontal_alignment.nil?
        invalid_properties.push("invalid value for 'horizontal_alignment', horizontal_alignment cannot be nil.")
      end

      if @vertical_alignment.nil?
        invalid_properties.push("invalid value for 'vertical_alignment', vertical_alignment cannot be nil.")
      end

      if @creator_id.nil?
        invalid_properties.push("invalid value for 'creator_id', creator_id cannot be nil.")
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

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @horizontal_alignment.nil?
      horizontal_alignment_validator = EnumAttributeValidator.new('String', ["None", "Left", "Center", "Right"])
      return false unless horizontal_alignment_validator.valid?(@horizontal_alignment)
      return false if @vertical_alignment.nil?
      vertical_alignment_validator = EnumAttributeValidator.new('String', ["None", "Top", "Center", "Bottom"])
      return false unless vertical_alignment_validator.valid?(@vertical_alignment)
      return false if @creator_id.nil?
      return false if @box.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["None", "Area", "Arrow", "Distance", "Ellipse", "Link", "Point", "Polyline", "ResourcesRedaction", "TextField", "TextHighlight", "TextRedaction", "TextReplacement", "TextStrikeout", "TextUnderline", "Watermark", "Image"])
      return false unless type_validator.valid?(@type)
      return false if @created_on.nil?
      pen_style_validator = EnumAttributeValidator.new('String', ["Solid", "Dash", "DashDot", "Dot", "LongDash", "DashDotDot"])
      return false unless pen_style_validator.valid?(@pen_style)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] horizontal_alignment Object to be assigned
    def horizontal_alignment=(horizontal_alignment)
      validator = EnumAttributeValidator.new('String', ["None", "Left", "Center", "Right"])
      if horizontal_alignment.to_i == 0
        unless validator.valid?(horizontal_alignment)
          # raise ArgumentError, "invalid value for 'horizontal_alignment', must be one of #{validator.allowable_values}."
           @horizontal_alignment = validator.allowable_values[horizontal_alignment.to_i]
        end
        @horizontal_alignment = horizontal_alignment
      else
        @horizontal_alignment = validator.allowable_values[horizontal_alignment.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vertical_alignment Object to be assigned
    def vertical_alignment=(vertical_alignment)
      validator = EnumAttributeValidator.new('String', ["None", "Top", "Center", "Bottom"])
      if vertical_alignment.to_i == 0
        unless validator.valid?(vertical_alignment)
          # raise ArgumentError, "invalid value for 'vertical_alignment', must be one of #{validator.allowable_values}."
           @vertical_alignment = validator.allowable_values[vertical_alignment.to_i]
        end
        @vertical_alignment = vertical_alignment
      else
        @vertical_alignment = validator.allowable_values[vertical_alignment.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["None", "Area", "Arrow", "Distance", "Ellipse", "Link", "Point", "Polyline", "ResourcesRedaction", "TextField", "TextHighlight", "TextRedaction", "TextReplacement", "TextStrikeout", "TextUnderline", "Watermark", "Image"])
      if type.to_i == 0
        unless validator.valid?(type)
          # raise ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
           @type = validator.allowable_values[type.to_i]
        end
        @type = type
      else
        @type = validator.allowable_values[type.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pen_style Object to be assigned
    def pen_style=(pen_style)
      validator = EnumAttributeValidator.new('String', ["Solid", "Dash", "DashDot", "Dot", "LongDash", "DashDotDot"])
      if pen_style.to_i == 0
        unless validator.valid?(pen_style)
          # raise ArgumentError, "invalid value for 'pen_style', must be one of #{validator.allowable_values}."
           @pen_style = validator.allowable_values[pen_style.to_i]
        end
        @pen_style = pen_style
      else
        @pen_style = validator.allowable_values[pen_style.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          id == other.id &&
          text == other.text &&
          text_to_replace == other.text_to_replace &&
          horizontal_alignment == other.horizontal_alignment &&
          vertical_alignment == other.vertical_alignment &&
          creator_id == other.creator_id &&
          creator_name == other.creator_name &&
          creator_email == other.creator_email &&
          box == other.box &&
          points == other.points &&
          page_number == other.page_number &&
          annotation_position == other.annotation_position &&
          svg_path == other.svg_path &&
          type == other.type &&
          replies == other.replies &&
          created_on == other.created_on &&
          font_color == other.font_color &&
          pen_color == other.pen_color &&
          pen_width == other.pen_width &&
          pen_style == other.pen_style &&
          background_color == other.background_color &&
          font_family == other.font_family &&
          font_size == other.font_size &&
          opacity == other.opacity &&
          angle == other.angle &&
          url == other.url &&
          image_path == other.image_path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, text, text_to_replace, horizontal_alignment, vertical_alignment, creator_id, creator_name, creator_email, box, points, page_number, annotation_position, svg_path, type, replies, created_on, font_color, pen_color, pen_width, pen_style, background_color, font_family, font_size, opacity, angle, url, image_path].hash
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
