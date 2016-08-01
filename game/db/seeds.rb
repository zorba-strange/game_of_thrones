House.destroy_all
Character.destroy_all


current_house = House.create!({
  name: "House Arryn", 
  rulers_of_the: "Vale of Arryn", 
  from: "Eyrie", 
  photo_url:"http://vignette3.wikia.nocookie.net/gameofthrones/images/6/62/House-Arryn-heraldry.jpg/revision/latest?cb=20140402114006"
}) 

characters = Character.create!({
  name: "Jon Arryn", 
  photo_url: "http://nerdist.com/wp-content/uploads/2016/01/John-Standing-Game-of-Thrones.jpg", 
  house: current_house
})


