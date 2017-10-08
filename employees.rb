class Company
    #This represents a company in which people work
    attr_reader :name
    attr_accessor :employees

    def initialize
        @name =  "Fang & Co."
        @employees = []
    end

    def name
        #Returns the name of the company
        puts @name
    end
    def addemployee(profile)
        @employees.push(profile)
    end
    def employee_info
        @employees.each{ |employee|
            puts "Name: #{employee.name}, Start Date: #{employee.start_date}, Title: #{employee.title}"
        }
    end
    def company_info
        puts "#{@name}'s Employees"
        @employees.each{ |employee|
            puts "Name: #{employee.name}, Start Date: #{employee.start_date}, Title: #{employee.title}"
        }
    end
    # Add the remaining methods to fill the requirements above
end
class Employee
    attr_accessor :name,:title,:start_date
    def initialize(name, title, start_date)
       @name = name
       @title = title
       @start_date = start_date
    end
    def employee_info
        puts "#{@name} started on #{@start_date} as a #{@title}"
    end
end
company = Company.new

employee1 = Employee.new("FANG","CEO","06-06-2016")
employee2 = Employee.new("Dude","DEV","06-07-2016")
employee3 = Employee.new("Guy","JANITOR","06-08-2016")

company.employees << employee1
company.addemployee(employee2)
company.addemployee(employee3)

company.company_info



