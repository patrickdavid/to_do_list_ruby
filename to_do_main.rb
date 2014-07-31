require './lib/list'
require './lib/task'

print "Welcome to your to do list. You will be able to create multiple lists and within that list you can enter in items to do.  When complete you can remove those items and also see which items you have left to do."

print "\n""\n""\n""\n"


@list_categories =[]

def main_menu
  loop do
    puts "Press 'c' to create a category, press 'a' to add a task,  press 'l' to list all of your tasks, "
    puts "Press 'x' to quit."
    main_choice = gets.chomp
    if main_choice == 'c'
      add_category
    # elsif main_choice == 'a'
    #   add_task
    elsif main_choice == 'l'
      list_categories
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
  @category_name = gets.chomp
  new_list = List.new(@categoryname)
  @list_categories << new_list
  puts @category_name + " added.\n\n"
end
def add_task
  puts "Enter a description of the new task:"
  user_description = gets.chomp
   new_list << Task.new(user_description)
  puts user_description + " added.\n\n"
end

def list_categories
  puts "line 45"
  @list_categories.each do |list|
    puts list.name
  end
end



main_menu
