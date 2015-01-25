puts 'Adding Developent Users:'

farm = Farm.find_by name: 'McCain'
Seeds.add_user full_name: 'Steve McCain', is_manager: true, farm: farm
