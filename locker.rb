class Locker

  def initialize
    @lockers = [false] * 100
  end

  def start
    100.times do |child|
      every_nth(child) do
        @lockers[child] = flip_locker(@lockers[child])
      end
    end
    puts @lockers
  end

  def every_nth(child, &block)
    (1..100).step(child+1, &block)
  end

  def flip_locker(locker)
    !locker
  end
end

Locker.new.start
