require_relative './cron_parser'

# Main class which is starts the execution flow
class Main
  def self.start
    cron_parser = CronParser.new
    cron_parser.init
  end
end

Main.start
