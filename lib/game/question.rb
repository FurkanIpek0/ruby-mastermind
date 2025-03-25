module Question
  def self.normal_ask(question,*correct_answers)
    loop do
      puts question
      answer = gets.chomp.downcase
      correct_answers = correct_answers.map { |answer| answer.downcase }
      if correct_answers.include?(answer)
        return answer
      else
        puts "Wrong input! Please write true input."
      end
    end
  end
end