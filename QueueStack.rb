KAPASITAS_STANDAR = 10

class Stack
 def initialize(kapasitas=KAPASITAS_STANDAR)
  @kapasitas = kapasitas
  @data = Array.new
  @ukuran = 0
 end
 
 def isZero?()
  return @ukuran == 0
 end
 
 def full?()
  return @ukuran == @kapasitas
 end
 
 def add(nilai)
  if full?
   puts "stack penuh.."
   Kernel.exit(1)
  end
  @data.push(nilai)
  @ukuran += 1
 end
 
 def take()
  if full?
   puts "Stack penuh..."
   Kernel.exit(1)
  end
  @ukuran -= 1
  return @data.pop
 end
 
 def capacity()
  return @kapasitas
 end
 
 def size()
  return @ukuran
 end
 
 def last()
  return @data.last
 end
 
 def to_s()
  return @data.to_s
 end
end

#create instance
stack = Stack.new(5)

#add 3 data to stack
3.times { | i | stack.add( (i+1) * 10 )}

#print the information about stack
puts "Capacity : #{stack.capacity}"
puts "Ukuran : #{stack.size}"
puts "Elemen : #{stack.last}"

puts "Take the stack data : "
3.times { puts stack.take() }

print "\n"

class Queue
  def initialize(kapasitas=KAPASITAS_STANDAR)
  @kapasitas = kapasitas
  @data = Array.new
  @ukuran = 0
 end
 
 def isZero?()
  return @ukuran == 0
 end
 
 def full?()
  return @ukuran == @kapasitas
 end
 
 def add(nilai)
  if full?
   puts "stack penuh.."
   Kernel.exit(1)
  end
  @data.push(nilai)
  @ukuran += 1
 end
 
 def take()
  if full?
   puts "Queue penuh..."
   Kernel.exit(1)
  end
  @ukuran -= 1
  return @data.shift
 end
 
 def capacity()
  return @kapasitas
 end
 
 def size()
  return @ukuran
 end
 
 def first()
  return @data.first
 end
 
 def to_s()
  return @data.to_s
 end
end

#create instance
queue = Queue.new(5)

#add 3 data to stack
3.times { | i | queue.add( (i+1) * 10 )}

#print the information about stack
puts "Capacity : #{queue.capacity}"
puts "Ukuran : #{queue.size}"
puts "Elemen : #{queue.first}"

puts "Take the stack data : "
3.times { puts queue.take() }

