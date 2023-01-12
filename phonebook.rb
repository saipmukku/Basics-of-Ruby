class PhoneBook

    def initialize

        @names = Array.new
        @numbers = Array.new
        @listed = Array.new

    end

    def isListed(a, num)

        counter = 0

        while(counter != a.length)

            if(@numbers[counter] == num && @listed[counter])

                return true

            end

            counter += 1

        end

        return false

    end

    def add(name, number, is_listed)
        
        if !@names.include?(name) && number =~ /[0-9]{3}-{1}[0-9]{3}-{1}[0-9]{4}/ && !(@numbers.include?(number) && isListed(@numbers, number))
    
            @names.push(name)
            @numbers.push(number)
            @listed.push(is_listed)
            return true

        else

            return false

        end

    end

    def lookup(name)
        
        if @listed[@names.index(name)] && @names.include?(name)

            return @numbers[@names.index(name)]

        else

            return nil

        end

    end

    def lookupByNum(number)
        
        if isListed(@numbers, number)

            return @names[@numbers.index(number)]

        else

            return nil

        end

    end

    def namesByAc(areacode)
        
        havenums = Array.new
        counter = 0;

        while(counter != @numbers.length)

            if @numbers[counter] =~ /^(#{areacode})/

                havenums.push(@names[counter])

            end

            counter += 1

        end

        puts havenums

        return havenums

    end

end