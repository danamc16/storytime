# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

def default
	adjusted = Datetime.now().advance(:hours => -24)
  	if @user.created_at <= adjusted
	  	when time = @user.time
	  		return "Welcome to Storytime! Here's your fist story. \nOnce upon a time, there was an ugly barnacle. He was so ugly that everyone died. The end."
	  	end
  	end
end

def change_story
end

def normal
end

every 1.day do
	command "."
end