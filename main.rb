$LOAD_PATH << '.'
require "company"
require "employee"

class Main
  def self.user_input
    gets.chomp.downcase
  end

  def self.comp_name
    puts "Enter the name of a company"
    comp_name = user_input
  end
  
  def self.emp_name
    puts "Enter the name of a employee"
    emp_name = user_input
  end

  def self.comp_address
    puts "Enter the comany address"
    comp_address = user_input
  end

  def self.emp_age
    puts "Enter the age of employee"
    emp_age = user_input
  end

  def self.main
    while true
      puts "select the following options"
      puts "1. create company"
      puts "2. create employee"
      puts "3. All companies"
      puts "4. All Employees"
      puts "5. Employees in a paricular company"
      puts "6. All Employees details of a company"
      puts "7. Find if any employee is present in a company?"
      puts "8. EXIT"
      option = gets.to_i
      case option
        when 1
          Company.create_company(comp_name = self.comp_name, comp_address = self.comp_address)
        when 2
          Employee.create_employee(comp_name = self.comp_name, emp_name = self.emp_name, emp_age = self.emp_age)
        when 3
          Company.all_companies
        when 4 
          Employee.all_employees
        when 5
          Employee.no_emp_in_company(comp_name = self.comp_name)
        when 6
          Employee.comp_emps_details(comp_name = self.comp_name)
        when 7 
          Company.emp_present?(comp_name = self.comp_name, emp_name = self.emp_name)
        when 8
          break
        else puts "Choose the correct option"
      end
    end
  end

end

Main.main
