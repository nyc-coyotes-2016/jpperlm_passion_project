jason = User.create(username:'J DOG', email:'jdog@gmail.com', password:'jdog')
puppy = User.create(username:'puppy', email:'puppy@gmail.com', password:'puppy')
angryCat = User.create(username:'aNgRyCaT', email:'angrycat@gmail.com', password:'angrycat')

r1 = Restaurant.create(name:'Dog Food Emporium', cuisine:'Pet Food', address:'123 Pup Street', city: 'Puppyhaven', state:'CA', zip:"88888", user: jason)
r2 = Restaurant.create(name:'Cat Food World', cuisine:'Pet Food', address:'321 Feline Drive', city: 'Catcity', state:'FE', zip:"12345", user: jason)
r3 = Restaurant.create(name:'Fridays', cuisine:'American', address:'123 Wednesday st', city: 'newyork', state:'NY', zip:"12529", user: angryCat)

review = Review.create(stars:5, message:'Best food ever, woof', user: puppy, restaurant: r1)
review = Review.create(stars:2, message:'GROSSEST FOOD', user: angryCat, restaurant: r1)

review = Review.create(stars:5, message:'My dog loved it', user: jason, restaurant: r1)



review = Review.create(stars:4, message:'yummmmmy', user: puppy, restaurant: r2)
review = Review.create(stars:5, message:'BEST PLACE 4EVER', user: angryCat, restaurant: r2)

review = Review.create(stars:2, message:'Smells like fish', user: jason, restaurant: r2)
