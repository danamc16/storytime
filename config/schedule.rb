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

class Functions
	def default
		adjusted = Datetime.now().advance(:hours => -24)
	  	if @user.created_at <= adjusted
		  	every 1.day, :at => @user.time do
	  			#send default story
	  			#Story.first = default story
	  			#Story.first.activities = default activities
			end
	  	end
	end

	def change_story
		if Story.find_by((@user.story.id) + 1).title != @user.story.title
			puts Story.second + Story.second.activities
		end

	end


	def normal
		if Story.find_by((@user.story.id) + 1).title == @user.story.title
			puts 'Here\'s your next chapter.'
		end
	end
end

every 1.day do
	runner "Functions.default"
	runner "Functions.normal"
	runner "Functions.change_story"
end

	def age(dob)
		now = Time.now.utc.to_date
		now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
	end
