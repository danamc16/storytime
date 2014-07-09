# require 'twilio-ruby'

def normal
	account_sid = "AC6bb55ecdf61f02c7692ab0e2b1883bca"
	auth_token = "02320eafb5cc10b0a95d187407a1ca11"
	@client = Twilio::REST::Client.new account_sid, auth_token

	from ="+15132582662" #the twilio number

	friends = ["+12073471877","+12055161417","+13364133434","+18475072934","+12036409123","+12034919569","+14807078013","+12037476137","+16263209877","+18609512067","+12406435698","+17347098381","+12183903550","+15618097784","+15106955779","+12146638371","+16318737806","+18326227637","+19788082293","+18586029052","+15612125831","+14129831230","+19787671566","+15085057856","+12033618826","+12158036203","+15133166064","+18186897323","+19735448685","+12403701259","+12039841636"]

	age_group = 1


	#friends.all.each do |friend|

#if user.id == 3
	

		#if user.age <= 1
		#	age_group = 1
		#elsif user.age <= 2
		#	age_group = 2
		#else
		#	age_group = 3 
		#end

		story = "There's a Polar Bear\nIn our Frigidaire--\nHe likes it 'cause it's cold in there.\nWith his seat in the meat\nAnd his face in the fish\nAnd his big hairy paws\nIn the buttery dish,\nHe's nibbling the noodles,\nHe's munching the rice,\nHe's slurping the soda,\nHe's licking the ice.\nAnd he lets out a roar\nIf you open the door.\nAnd it gives me a scare\nTo know he's in there--\nThat Polary Bear\nIn our Fridgitydaire. "

		activity = "\n\nActivity: Now give your best polar bear roar! Your best polar bear burp! Your best polar bear slurp! Where would you hide if you were a bear?"


		@client.account.messages.create(

		:from => from,
		:to => friend,
		:body => story + activity
		# Story.find(person.select(:story_id))
		# need to include activities in body
		# send multiple messages? one for story, one for activty#
	)
		#puts friend.phone_number
end

#end

