require 'sinatra'
class App < Sinatra::Application
	# myapp.rb

	load = 0
	leakarray = [1..5000]

	get '/' do
	  'Hello world!'
	end


	get '/wait/:length' do
	    sleep(params[:length].to_f) ## What is the ruby equiv of time.sleep
	    "done" ## This is a return because near as I can tell we can't do anything without magic
	end

	get '/wait' do
		randSleep = Random.new()
	    sleep(randSleep.rand(1..20))
	    "done"
	end

	get '/load' do
	    load = load + 1
		"current load: #{load}"
	end

	get '/die' do
	   	while true
	   		var x
	   	end
	end

	get '/load_wait' do
	    load = load + 1
	    sleep(load/50.0)
	    "done"
	end

	get '/leaky' do 
		leakarray = leakarray + leakarray
		" #{leakarray.length()}"
	end
end