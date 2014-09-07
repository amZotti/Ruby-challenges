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

class JuiceHerbs < JuicingRoutine
  def initialize
    super ("Juicing herbs")
  end
  def time
    3
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

class CleanBlade < JuicingRoutine
  def initialize
    super ("Cleaning blade")
  end
  def time
    5
  end
end

#Composite class
class CompositeTask < JuicingRoutine
  attr_reader :task, :steps
  def initialize(task)
    @steps = []
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

class Omega8000 < CompositeTask
  def initialize
    super ("Use the Omega 8000 to get the most out of vegetables!")
    add_step AssembleJuicer.new
    add_step JuiceVegetables.new
    add_step JuiceHerbs.new
    add_step CleanJuicer.new
  end
end

class BladedJuicer < CompositeTask
  def initialize
    super ("Using the cheap bladed juicer")
    add_step AssembleJuicer.new
    add_step JuiceVegetables.new
    add_step CleanJuicer.new
    add_step CleanBlade.new
  end
end

puts Omega8000.new.time_required
puts BladedJuicer.new.time_required
