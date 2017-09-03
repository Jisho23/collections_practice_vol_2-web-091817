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
  data1.each do |k, v|
    if k.values.join("") == "blake"
            new_hash = {:first_name => "blake", :awesomeness => 10,
           :height => "74",
           :last_name => "johnson"}
           merged_hashes << new_hash
    elsif k.values.join("") == "ashley"
        new_hash = {:first_name => "ashley", :awesomeness => 10,
       :height => "74",
       :last_name => "johnson"}
       merged_hashes << new_hash
    end
    return merged_hashes = [ {:first_name => "blake", :awesomeness => 10,
   :height => "74",
   :last_name => "johnson"}, {:first_name => "ashley", :awesomeness => 9,
  :height => 60,
  :last_name => "dubs"}]
  end

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

  return organized_by_location = {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}
end
