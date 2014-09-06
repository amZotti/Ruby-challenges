def elapsed_seconds(start_time, end_time)
  end_time.strftime('%s').to_i - start_time.strftime('%s').to_i
end
