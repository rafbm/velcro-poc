# encoding: utf-8

LANGUAGES = [
  OpenStruct.new(
    code: 'fr',
    name: 'French',
    words: {
      thanks: 'merci',
      house: 'maison',
      mother: 'maman',
    }
  ),
  OpenStruct.new(
    code: 'es',
    name: 'Spanish',
    words: {
      thanks: 'gracias',
      house: 'casa',
      mother: 'mama',
    }
  ),
  OpenStruct.new(
    code: 'de',
    name: 'German',
    words: {
      thanks: 'shtrazzle',
      house: 'beezle tizzle',
      mother: 'oognubizzle',
    }
  ),
]

before do
  puts "#{request.request_method} #{request.path} -- #{request.user_agent}"

  headers 'Cache-Control' => 'no-cache, no-store, max-age=0, must-revalidate'
  headers 'Pragma' => 'no-cache'
  headers 'Expires' => 'Fri, 01 Jan 1990 00:00:00 GMT'
end

get '/' do
  @title = 'Home'
  @meta_description = 'Home'
  erb :index
end

get '/learn/:lang' do
  @lang = LANGUAGES.detect { |lang| lang.code == params[:lang] }
  @title = "Learn #{@lang.name}"
  @meta_description = "Learn #{@lang.name}"
  erb :index
end

get '/search' do
  @title = "Search for “#{params[:q]}”"
  @meta_description = "Search for “#{params[:q]}”"
  erb :search
end

post '/search' do
  @title = "Search for “#{params[:q]}”"
  @meta_description = "Search for “#{params[:q]}”"
  erb :search
end
