require 'resque'

class SampleJob
  @queue = :normal

  def self.before_enqueue
    puts "Start before_enqueue"
    puts Resque.size(:normal)
    puts "Finish before_enqueue"
    true
  end

  def self.perform
    puts "Start perform"
    puts Resque.size(:normal)
    puts "Finish perform"
  end
end
