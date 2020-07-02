class Employee
  attr_accessor :age
  attr_accessor :company
  attr_accessor :name

  @@all_employee = []
  @@employee_id = 0
  @@company = []
  
  def initialize(company,id,name,age)
    @id = id
    @name = name
    @age = age
    @company = company
  end
  
  def self.all_companies
    @@company
  end

  def self.create_employee(comp_name,emp_name,emp_age)
    @@employee_id += 1
    id = @@employee_id
    @@company.each do |comp|
      if comp_name == comp.name
        emp_obj = Employee.new(comp_name,id,emp_name,emp_age)
        @@all_employee << emp_obj
        Company.all_employees << emp_obj
      else 
        puts "invalid company name"
      end
    end
  end

  def self.all_employees
    puts "Total employees : #{@@all_employee.length}"
  end

  def self.comp_emps_details(comp_name)
    @@company.each do |comp|
      if comp_name == comp.name
        @@all_employee.each do |emp|
          if comp_name == emp.company
            puts "Employee Name: #{emp.name}"
            puts "Age: #{emp.age}"
          end
        end
      else puts "Company #{company} does not exist"
      end
    end
  end
  
  def self.no_emp_in_company(comp_name)
    counter = 0
    @@company.each do |comp|
      if comp_name == comp.name
        @@all_employee.each do |emp|
          if comp_name == emp.company
            counter +=1
          end
        end
      else 
        puts "Company #{comp_name} does not exist"
        break
      end
    puts "Total number of employees in #{comp_name} :#{counter}"
    end
  end

end


