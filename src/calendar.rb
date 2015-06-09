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
    "#{year_padded}/#{month_padded}|#{week_padded}/#{day_padded} #{time_string}"
  end

  def print_unit
    "#{year_padded}yr #{month_padded}mh #{week_padded}wk #{day_padded}dy"\
      " #{hour_padded}hr #{minute_padded}mn #{second_padded}sc"
  end

  def print_long
    "#{time_string}, #{day_string}, #{week_string}, #{month_string} #{year}"
  end

  def day_string
    %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)[day]
  end

  def week_string
    %w(Luath Dara Láir Deireanach)[week]
  end

  def month_string
    %w(January February March April May
       June July August September October
       November December Undecember)[month]
  end

  def time_string
    "#{hour_padded}:#{minute_padded}:#{second_padded}"
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

  def year_padded
    year < 10 ? "0#{year}" : year.to_s
  end

  def month_padded
    month < 10 ? "0#{month}" : month.to_s
  end

  def week_padded
    week < 10 ? "0#{week}" : week.to_s
  end

  def day_padded
    day < 10 ? "0#{day}" : day.to_s
  end

  def hour_padded
    hour < 10 ? "0#{hour}" : hour.to_s
  end

  def minute_padded
    minute < 10 ? "0#{minute}" : minute.to_s
  end

  def second_padded
    second < 10 ? "0#{second}" : second.to_s
  end
end
