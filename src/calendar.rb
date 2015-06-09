class Calendar
  SECONDS_PER_MINUTE = 60
  SECONDS_PER_HOUR   = SECONDS_PER_MINUTE * 60
  SECONDS_PER_DAY    = SECONDS_PER_HOUR * 24
  SECONDS_PER_WEEK   = SECONDS_PER_DAY * 7
  SECONDS_PER_MONTH  = SECONDS_PER_WEEK * 4
  SECONDS_PER_YEAR   = SECONDS_PER_MONTH * 13

  def initialize unix_timestamp = Time.now
    @time = unix_timestamp.to_i
  end

  def print_short
    "#{year}/#{month}|#{week}/#{day} #{hour}:#{minute}:#{second}"
  end

  def print_unit
    "#{year}yr #{month}mh #{week}wk #{day}dy #{hour}hr #{minute}mn #{second}sc"
  end

  def print_long
    "#{year}/#{month}|#{week}/#{day} #{hour}:#{minute}:#{second}"
  end

  def year
    @time / SECONDS_PER_YEAR
  end

  def month
    @time % SECONDS_PER_YEAR / SECONDS_PER_MONTH
  end

  def week
    @time % SECONDS_PER_MONTH / SECONDS_PER_WEEK
  end

  def day
    @time % SECONDS_PER_WEEK / SECONDS_PER_DAY
  end

  def hour
    @time % SECONDS_PER_DAY / SECONDS_PER_HOUR
  end

  def minute
    @time % SECONDS_PER_HOUR / SECONDS_PER_MINUTE
  end

  def second
    @time % SECONDS_PER_MINUTE
  end
end
