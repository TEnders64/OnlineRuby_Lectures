# person = {
#   name: "Nathaniel",
#   occupation: "Coder",
#   location: "Seattle"
# }
# puts person[:occupation]
# puts person["name"]
# puts person[name]
# person2 = {'name': "Nathaniel"}
# puts person2[:name]
# 50.times { print '=' }
# puts person2["name"]
# puts person[name]
# puts person.name

def run_this_for_me
  yield
end

run_this_for_me { puts 'hey' }
