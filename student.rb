class Student

 def initialize (name, cohort)
  @name = name
  @cohort = cohort
end

def get_name
  @name
end

def get_cohort
  @cohort
end

def update(name, cohort)
  @name = name
  @cohort = cohort
end

def talk
  "I can talk!"
end

def favourite_language(language)
  "I love #{language}!"
end

end