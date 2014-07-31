require './lib/list'
require './lib/task'

print "Welcome to your to do list. You will be able to create multiple lists and within that list you can enter in items to do.  When complete you can remove those items and also see which items you have left to do."

print "\n""\n""\n""\n"


@list_categories =[]

def main_menu
  loop do
    puts "Press 'c' to create a category, press 'a' to add a task,  press 'l' to list all of your categories, press 'y' to list your tasks"
    puts "Press 'x' to quit."
    main_choice = gets.chomp
    if main_choice == 'c'
      add_category
    elsif main_choice == 'a'
      add_task
    elsif main_choice == 'l'
      list_categories
    elsif main_choice == 'y'
      list_task
    elsif main_choice == 'x'
      puts "Good-bye!"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end

def add_category
  puts "Enter a category to store specific tasks:"
  category_name = gets.chomp
  @list_categories << List.new(category_name)
  puts category_name + " added.\n\n"
end
def add_task
  puts "Enter the category of the new task:"
  user_description = gets.chomp
  @list_categories.each do |index|
    if index.name == user_description
      puts "enter task name to add"
      name = gets.chomp
      new_task =Task.new(name)
      index.add_task(new_task)
    end
  end
end

def list_task
  puts "Enter the category so you can see the list:"
  user_description = gets.chomp
  @list_categories.each do |index|
    if index.name == user_description
       index.tasks.each do |item|
        puts item.name
      end
    end
  end
end

def list_categories
  puts "line 45"
  @list_categories.each do |list|
    puts list.name
  end
end



main_menu
