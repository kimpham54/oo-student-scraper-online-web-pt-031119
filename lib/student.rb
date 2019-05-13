class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
<<<<<<< HEAD
  #   # student = Student.new(student_hash)
    student_hash.each do |key, value|
      self.send(("#{key}="),value)
    end
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student_hash|
      # binding.pry
      Student.new(student_hash)
    end
end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |attr, value|
      self.send("#{attr}=", value)
    end
    self
=======
    # student = Student.new(student_hash)
    student_hash.each {|key, value| self.send(("#{key}="),value)}
  end
  end

  def self.create_from_collection(students_array)
    students_array = Scraper.scrape_index_page
    Student.new()
    students_array.each {|key, value| self.send(("#{key}="),value)}

  end

  def add_student_attributes(attributes_hash)
    self


>>>>>>> e14d13944132de46835b98fdf0ee386541059aef
  end

  def self.all
    @@all
  end
<<<<<<< HEAD


=======
>>>>>>> e14d13944132de46835b98fdf0ee386541059aef
end
