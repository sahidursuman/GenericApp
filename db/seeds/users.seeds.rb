after :farms do
  puts 'Adding Users:'

  farm = Farm.find_by name: 'McCain'
  Seeds.add User, full_name: 'Mr McCain', is_manager: true, farm: farm
end
