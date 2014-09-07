#Component class
class JuicingRoutine
  attr_reader :task

  def initialize(task)
    @task = task
  end

  def time
    0.0
  end
end

#Leaf class
class AssembleJuicer < JuicingRoutine
  def initialize
    super ("Assembling all parts into juicer")
  end
  def time
    1
  end
end

class JuiceVegetables < JuicingRoutine
  def initialize
    super ("Juicing vegetable")
  end
  def time
    10
  end
end

class CleanJuicer < JuicingRoutine
  def initialize
    super ("Cleaning juicer")
  end
  def time
    3
  end
end

#Composite class
class Juice < JuicingRoutine
  attr_reader :task, :steps
  def initialize
    super ("Begin juicing process")
    @steps = []
    add_step AssembleJuicer.new
    add_step JuiceVegetables.new
    add_step CleanJuicer.new
  end

  def add_step(step)
    @steps << step
  end

  def remove_step(step)
    @steps.delete(step)
  end

  def time_required
    total_time = 0
    @steps.each { |step| total_time += step.time }
    "#{total_time} minutes"
  end
end

puts Juice.new.time_required
