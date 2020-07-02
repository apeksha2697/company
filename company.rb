class Company
  attr_accessor :id
  attr_accessor :name
  
  @@all_companies = []
  @@company_id = 0
  @@employees = []

  def initialize(id,name,address)
    @id = id
    @name = name
    @address = address
  end
  
  def self.all_employees
    @@employees
  end
  
  def self.create_company(comp_name,comp_address)
    @@company_id += 1
    id = @@company_id
    comp_obj = Company.new(id,comp_name,comp_address)
    @@all_companies << comp_obj
    Employee.all_companies << comp_obj
  end 
  
  def self.all_companies
   puts "Total no of companies: #{@@all_companies.length}"
   @@all_companies.each do |comp|
      puts comp.name
   end
  end

  def self.emp_present?(comp_name,emp_name)
    @@all_companies.each do |comp|
      if comp_name == comp.name
        @@employees.each do |emp|
          if emp_name == emp.name && comp_name == emp.company
            puts true
          else puts false
          end
        end
      else puts "Company does not exist"
      end
    end
  end

end

 