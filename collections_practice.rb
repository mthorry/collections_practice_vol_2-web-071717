# your code goes here
require "pry"

def begins_with_r(arr)
  arr.all? do |element|
    element.start_with?("r")
  end
end


def contain_a(arr)
  arr.select do |element|
    element.include? "a"
  end
end


def first_wa(arr)
  wa = ""
  arr.each do |element|
    if element.match(/wa/)
    wa = element
    break
    end
  end
  wa
end


def remove_non_strings(arr)
  arr.delete_if {|el| el.class != String}
end


def count_elements(arr)

  arr.uniq.each do |hash|
    hash[:count] = arr.count(hash)
  end

end



def merge_data(keys, data)
  keys.collect do |key| #returns new array
      key.merge(data[0][key[:first_name]])
 end
end


def find_cool(arr)
  arr.select {|hash| hash.values.include? "cool" }
end


def organize_schools(hash)

   organized_schools = {}

   hash.each_key do |key|
     if organized_schools.include?(hash[key][:location]) == false
       organized_schools[hash[key][:location]] = [key]
       binding.pry
     else
       organized_schools[hash[key][:location]] << key
     end
   end

   organized_schools
end



# schools = {
#       "flatiron school bk" => {
#         :location => "NYC"
#       },
#       "flatiron school" => {
#         :location => "NYC"
#       },
#       "dev boot camp" => {
#         :location => "SF"
#       },
#       "dev boot camp chicago" => {
#         :location => "Chicago"
#       },
#       "general assembly" => {
#         :location => "NYC"
#       },
#       "Hack Reactor" => {
#         :location => "SF"
#       }
#     }


