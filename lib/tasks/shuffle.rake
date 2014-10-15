namespace :cards do
  desc "Shuffle a pack of cards"
  task :shuffle do
    Card.all.shuffle.each do |card|
      puts card
      sleep 0.1
    end
  end
end