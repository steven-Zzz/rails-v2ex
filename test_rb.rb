module A
  C = "In the..."
end

module A
  module B
    puts Module.nesting
    puts C
  end
end
