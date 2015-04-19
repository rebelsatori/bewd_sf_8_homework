class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end



<% = artist_select (:painting, :artist_id, Artist.all, :id, :name %>

Painting_Controller

@painting = Painting.new (params)
@artist = Artist.find (param[artistselect])

Models                                         Associations
                                                    
Artist ->                                       has_many :paintings
						    has_many_museums, :through :: paintings

Museum -> Name                        has_many_paintings
						    has_many_artists, through :: paintings

Painting -> Title                            belongs_to Artist
                  URL (Pic)                    belongs_to Museum
                  Artist_ID                   
                  Museum_ID                

Museum           		Painting        			     Artist

#  Name                            ID_num    m_ID   
1  Louvre
2  Metz
3  Museum = Museum.food(2)

Museum.paintings
Museum.artist

ID     Artist      Museum





Controllers

Artists Controller
-New        -> Setup new Object
-Create     -> Save Parameters
-Index       -> Show Artists
-Show       -> See Artist


Museum Controller
-New
-Create
-Index
-Show

PaintingController
-New
-Create 
-Index
-Show




Routes

root "controllername#index"
resources :Artists pic





def new
	@museum = Museum.new
end

new.html.erb

<Hi> Hi </Hi> _form.html.erb

<% = render 'form' %>

<% = form_for @museum do |f| % >|
    <% f.label :name %>
    <% = f.text_field :name%>
    <% = f.submit %>
<% end %>




private 

def Safe_params
    params.require('museum') - permit (:name)
end

def create 
	@museum = Museum.new(Safe_params)
    if@museum.save 
      redirect_to @museum
    else
      render 'New'
    end
end 











PC

def New
   @painting = Painting.new
end

<% render ‘form’ %>
/views/painting/_form.html.erb

<% form_for @painting do |f| %>
<% f.label = Name % >
<%f. text_field :Name %>
<% f.collection.select :museum , :museum_id, @museums , :id , :name %>
<%end%>






private

def Safe_params

	params require ('painting').permit(:name:museum_ID)
end 




PC 

def New
	@painting = Painting.new 
	@museums = Museum.all


console

go to rails c x=painting.last



