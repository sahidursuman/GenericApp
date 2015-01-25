class Seeds
  def self.add_farm attrs
    farm = Farm.find_or_initialize_by(attrs)

    if farm.new_record? && farm.save
      puts "#{farm.name}"
    end
  end
  
  def self.add_user attrs
    user = User.find_or_initialize_by(attrs)

    if user.new_record? && user.save
      puts "#{user.full_name}"
    end
  end
end
