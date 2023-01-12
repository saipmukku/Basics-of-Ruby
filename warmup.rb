def fib(n)
    if n == 0
        
        return Array.new
        
    elsif n == 1 || n == 2
    
        return Array.new(n) { |i| i }
        
    else
        
        fib = Array.new
        first = 0
        second = 1
        current = first + second
        val = 2;
        
        fib.push first
        fib.push second
        
        while val < n
            fib.push current
            first = second
            second = current
            current = first + second
            val += 1
        end
        
        return fib
        
    end
end

def isPalindrome(n)
    nums = n.to_s
    first = 0
    last = nums.length - 1
    
    while first <= last
    
        if(nums[first] != nums[last]) 
            
            return false
            
        end
        
        first += 1
        last -= 1
        
    end
    
    return true

end

def nthmax(n, a)

    if n >= a.length

        return nil

    end

    arr = a.sort
    ans = a.length - n - 1;
    return arr[ans]
end

def freq(s)
    table = Hash.new

    if s.length == 0
        
        return ""
        
    elsif s.length == 1
    
        return s[0]
        
    else
       
        char = 0;
        
        while char != s.length

            if table.has_key?(s[char])
                
                table[s[char]] += 1
                
            else 
                
                table[s[char]] = 1
                
            end
            
            char += 1
            
        end
        
    end
    return table.max_by {|k, v| v}[0]
end

def zipHash(arr1, arr2)
    table = Hash.new
    counter = 0;
    
    if arr1.length != arr2.length
        
        return nil
        
    end
   
    if(arr1.length == 0) 
       
        return Hash.new
       
    else
        
        while(counter != arr1.length)
        
            table[arr1[counter]] = arr2[counter]
            counter += 1
            
        end
        
    end
    
    return table

end

def hashToArray(hash)
    
    hashes = Array.new
    thekeys = hash.keys
    counter = 0

    while(counter != hash.length)

        hashes.push(hash.assoc(thekeys[counter]))
        counter += 1

    end
    
    return hashes

end
