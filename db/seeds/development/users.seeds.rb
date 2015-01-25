puts 'Adding Developent Users:'

farm = Farm.find_by name: 'McCain'
Seeds.add User, full_name: 'Steve McCain', is_manager: true, farm: farm
