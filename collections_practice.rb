
def sort_array_asc(arr)
    arr.sort
end

def sort_array_desc(arr)
    arr.sort do |a,b|
        b <=> a
    end
end

def sort_array_char_count(arr)
    arr.sort do |a,b|
        a.length <=> b.length
    end
end

def swap_elements_from_to(arr,from,to)
    el_1 = arr[from]
    el_2 = arr[to]
    arr[from] = el_2
    arr[to] = el_1
    arr
end
def swap_elements(arr)
    new_arr = swap_elements_from_to(arr,1,2)
end

def reverse_array(arr)
    new_array = []
    i = arr.length - 1
    while i > -1
        new_array << arr[i]
        i = i-1
    end
    new_array
end

def kesha_maker(arr)
    return_arr = []
    arr.each do|word|
        word[2] = "$"
        return_arr = word
    end
end

def find_a(arr) #Remember #select method returns every element that fits criteria, finds or dedects returns just the first result
    return_arr = arr.select { |word| word.start_with?("a") }
end

def sum_array(arr)
    arr.inject {|sum, el| sum = sum + el}
end

def add_s(arr)
    arr.collect do|el, i| 
        if el != 'feet' 
            "#{el}s"
        else 
            el
        end
    end
end