require "pry"
# your code goes here
def begins_with_r(array)

  array.all? {|string| string[0].downcase == "r" }

end

def contain_a(array)
  array.select! {|string| string.downcase.include?("a")}
end

def first_wa(hash)
  hash.each {|k, v| return k if k[0..1] == "wa" }
end


def remove_non_strings(array)
  array.select! {|object| object.is_a? String}
end

def count_elements(array)

  counted_array = array.uniq
  counted_array.each_with_index do |hash, index|
    num = array.count(hash)
    counted_array[index][:count] = num
  end
end

def merge_data(data1, data2)
  merged_hashes = []
  data1.each do |person_name|
    current_name = person_name[:first_name]
    data2.each do |person_data|
      if person_data[current_name]
        merged_person = person_data[current_name]
        merged_person[:first_name] = current_name
        merged_hashes << merged_person
      end
    end
  end
  return merged_hashes
end

def find_cool(hashes)
  cool_hashes =[]
  hashes.each do |hash|

    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  return cool_hashes
end


def organize_schools(hash)
  organized_by_location = {}
  hash.each do |school, location|

    if organized_by_location[location[:location]]
       organized_by_location[location[:location]] << school
     else
       organized_by_location[location[:location]] = []
       organized_by_location[location[:location]] << school
     end
   end
   binding.pry
    return organized_by_location

end
