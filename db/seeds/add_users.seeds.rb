after :farms do
  puts 'Adding Users:'

  farm = Farm.find_by name: 'McCain'
  Seeds.add_user full_name: 'Mr McCain', is_manager: true, farm: farm
end
