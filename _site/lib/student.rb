class Student

	attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

	@@all = []

	def initialize(student_hash)
		student_hash.each do | k , v |
			#self.send("#{k}=",v)
			self.send(k.to_s+"=",v)
		end
		@@all << self
	end

	def self.create_from_collection(students_array)
		students_array.each do |x|
			self.new(x)
		end
	end

	def add_student_attributes(attributes_hash)
		attributes_hash.each do | k , v |
			self.send(k.to_s+"=",v)
		end
		self
	end

	def self.all
		@@all
	end
end

