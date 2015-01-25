class Seeds
  def self.add model, attrs
    object = model.find_or_initialize_by(attrs)

    if object.new_record? && object.save
      puts "#{object}"
    end
  end
end
