require 'AfricasTalkingGateway'
require 'sinatra'

apikey='01b8c85ae3cd4c330700a32f7969a90f7f5c915297f0adfb145da7e09980484e'

gateway=AfricasTalkingGateway.new('itcyborg',apikey)


#gateway.sendMessage('+254706928631',"hello")

post '/incomingSms' do
	from =params[:from]
	to=params[:to]
	message=params[:text]
	date=params[:date]
	id=params[:id]

	puts "mesage recieved is-#{message}"

	status 200
end
