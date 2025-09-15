# def list(arr)
#   max = arr.length
#   str = ''
#   arr.each_with_index do |e, i|
#     name = e[:name]
#     if i == 0
#       str += name
#     elsif i == max - 1
#       str += " & #{name}"
#     else
#       str += ", #{name}"
#     end
#   end unless arr.empty?

#   puts str
# end

# def list(arr)
#   names = arr.map { |e| e[:name] }
#   case names.length
#   when 0
#     names = ""
#   when 1
#     names = names.first
#   when 2
#     names = names.join(" & ")
#   else
#     names = "#{names[0..-2].join(', ')} & #{names.last}"
#   end

#   puts names
# end

# list([ { name: "Bart" }, { name: "Lisa" }, { name: "Maggie" } ])


# str = "hello my name is"

# puts str.tr("aeiou", "12345")

def bounce(h, b, w)
  view = 0
  if w < h && h > 0 && b > 0 && b < 1
    bh = h
    while bh > w
      view += 1
      bh *= b
      if bh > w
        view += 1
      end
    end
  else
    view = -1
  end
  puts view
end

bounce(3, 0.66, 1.5)
