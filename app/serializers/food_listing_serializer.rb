class FoodListingSerializer < ActiveModel::Serializer

  attributes :name, :description, :amount, :start_time, :end_time, :id 
  # :start_time_display, :end_time_display
  
  

  # belongs_to :food_giver
  # def start_time_display 
  #   # byebug
  #  object.start_time.strftime('%A, %B %d | %I:%M %P')
  # end
  
  # def end_time_display 
  #   object.end_time.strftime('%I:%M %P')
  # end

end 

