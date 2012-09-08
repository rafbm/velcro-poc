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

get '/' do
  erb :index
end

get '/learn/:lang' do
  @lang = LANGUAGES.detect { |lang| lang.code == params[:lang] }
  erb :index
end
