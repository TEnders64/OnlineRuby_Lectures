def tester
  arr = Array.new
  begin
    arr.fetch(1)
  rescue
    puts "rescue got activated"
  end
end

tester
