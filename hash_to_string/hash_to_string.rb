def hash_to_string(pairs)
  final_answer = ""
  pairs.each do |key, value|
    final_answer += "#{key} = #{value},"
  end
  final_answer[0, final_answer.length - 1]
end
puts hash_to_string({a: 1, b: '2'})
