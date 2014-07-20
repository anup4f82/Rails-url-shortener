class UrlsController < ApplicationController


def index
 @url = Url.all

end


def show
	short_url = "anup.p/"+params["id"]
    original = Url.where(shorturl:short_url)[0].original
    counter =  Url.where(shorturl:short_url)[0].counter
    counter+=1
    Url.where(shorturl:short_url)[0].update_attributes(counter:counter)
    redirect_to original
end

def create
  @shortened_url = "anup.p/"+(('a'..'z').to_a.sample(5)+(0..9).to_a.sample(2)).join('')
  Url.create(original:params["url"],shorturl: @shortened_url,counter:0)
  @counter = Url.where(shorturl:@shortened_url)[0].counter
   @url = Url.all
  render :index

end

end