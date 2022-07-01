class Stack

    def self.make_stack(n)
        stack = []
        while stack.length < n
            stack << rand(0..100)
        end
        stack
    end

    def initialize(n)
        @stack = Stack.make_stack(n)
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peak
        return @stack.last
    end
end

puts "Stack"
s = Stack.new(5)
p s
s.push(9)
p s
s.pop
p s
p s.peak
puts "---------------------"



class Queue

    def self.make_queue(n)
        queue = []
        while queue.length < n
            queue << rand(0..100)
        end
        queue
    end

    def initialize(n)
        @queue = Queue.make_queue(n)
    
    end

    def enqueue(el)
        @queue.push(el)
        # @queue.unshift(el)
    end

    def dequeue
        @queue.shift
        # @queue.pop
    end

    def peak
        return @queue.first
    end
end


puts "Queue"
q = Queue.new(5)
p q
q.enqueue(9)
p q
q.dequeue
p q
p q.peak
puts "---------------------"



class Map

    def self.make_map(n)
        map = []
        keys = (0..10).to_a
        count_keys = 0
        while count_keys < n
            map << [keys.sample, true]
            count_keys += 1
        end
        map
    end

    def initialize(n)
        @map = Map.make_map(n)
    end

    def set(key, value)
        idx = @map.index { |pair| pair[0] == key }
        if idx != nil
            @map[idx][1] = value
        else
            @map.push([key, value])
        end
    end

    def get(key)
        @map.each do |pair|
           return [pair[0],pair[1]] if pair[0] == key
        end
        nil
    end

    def delete(key)
        value = self.get(key)
        @map.reject! { |pair| pair[0] == key}
        value
    end

    def show
        @map
    end

end


puts "Map"
map = Map.new(5)
p map
map.set(10, "look a new key!")
p map
puts "---------- set -----------"
p map.get(10)
puts "----------- get ----------"
map.delete(10)
p map
puts "---------- delete -----------"
p map.show
puts "----------- show ----------"
