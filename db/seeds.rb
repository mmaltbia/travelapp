c = City.create([
	{ name: 'San Francisco', longitude: '-122.419416', latitude: '37.774929', image: 'https://gaytravel-destinations.s3.amazonaws.com/32384/golden-gate-bridge__small.jpg', banner_image: 'http://news.theregistrysf.com/wp-content/uploads/2015/06/san_francisco.jpg', bg_img: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTbOrNYQCXZJDi10OgtmnP_Sr54bNq7NkyQq-5UbtVDKOy13DxkCw'},
	{ name: 'London', longitude: '0.1275', latitude: '51.5072', image: 'https://yt3.ggpht.com/-kwsrVRXXfgs/AAAAAAAAAAI/AAAAAAAAAAA/Uf-E4AaHe0Q/s100-c-k-no/photo.jpg'},
	{ name: 'Bangkok', longitude: '100.5018', latitude: '13.7563', image: 'http://dn1w8s6xszn0j.cloudfront.net/media/image/c5/place-2014-10-21-10-bangkok806c67acfaafbb0d64c6f060314ba7b2.jpg'},
	{ name: 'Paris', longitude: '2.3508', latitude: '48.8567', image: 'https://yt3.ggpht.com/-_0MzjkeWnD0/AAAAAAAAAAI/AAAAAAAAAAA/PQoDC5ZdAU8/s100-c-k-no/photo.jpg'},
	{ name: 'Dubai', longitude: '55.2708', latitude: '25.2048', image: 'http://www.dubai-trip.net/Photos/Palm-Islands-Dubai.jpg'},
	{ name: 'Istanbul', longitude: '28.9550', latitude: '41.0136', image: 'https://gaytravel-destinations.s3.amazonaws.com/31967/modern_istanbul_skyline__small.jpg'},
	{ name: 'New York City', longitude: '-74.005941', latitude: '40.712784', image: 'https://radar-risk.com/wp-content/uploads/2015/02/New-York-City3-100x100.png'},
	{ name: 'Chicago', longitude: '-87.629798', latitude: '41.878114', image: 'http://media1.shmoop.com/media/covers/poetry/chicago-sandburg.jpg'},
	{ name: 'Los Angeles', longitude: '-118.243685', latitude: '34.052234', image: 'http://www.ctbuh.org/Portals/0/DigArticle/452/LosAngeles100.jpg'},
	{ name: 'Austin', longitude: '-97.743061', latitude: '30.267153', image: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRat_fvmkQfbMpOt8U3Wf3wPostfv1PMlHybCHpejJdvXImQ3su3w'},
	{ name: 'Washington, D.C.', longitude: '-77.036871', latitude: '38.907192', image: 'http://a3.mzstatic.com/us/r30/Purple/v4/bf/4f/d0/bf4fd0d0-591c-49b3-6545-a5dae038948a/icon100x100.png'},
	{ name: 'Seattle', longitude: '-122.332071', latitude: '47.606209', image: 'http://seattlepipeline.com/wp-content/uploads/2013/08/seattle.pic_.aug_-100x100.jpg'},
	{ name: 'Boston', longitude: '-71.058880', latitude: '42.360082', image: 'http://media.bizj.us/view/img/759401/0725bostonskyline*100xx450-450-75-0.jpg'},
	{ name: 'Portland', longitude: '-122.676482', latitude: '45.523062', image: 'http://pdxpipeline.com/wp-content/uploads/2014/07/10496994_666133416775556_3564040916926393817_o-100x100.jpg'},
	{ name: 'Houstin', longitude: '-95.369803', latitude: '29.760427', image: 'https://gaytravel-destinations.s3.amazonaws.com/32269/houston_night__small.jpg'},
	{ name: 'Philadelphia', longitude: '-75.165222', latitude: '39.952584', image: 'http://media.bizj.us/view/img/6645282/cira-centre-skyline*100xx2002-2002-499-0.jpg'},
	{ name: 'New Orleans', longitude: '-90.071532', latitude: '29.951066', image: 'http://www.aiamc.org/_Library/Loews_NewOrleans_Hotel/lg_new-orleans_0408_T.jpg'},
	{ name: 'Atlanta', longitude: '-84.387982', latitude: '33.748995', image: 'http://media.bizj.us/view/img/5708191/midtown-skyline-april-2015*100xx1306-1309-1558-0.jpg'},
	{ name: 'Charleston', longitude: '-79.931051', latitude: '32.776475', image: 'data:image/jpeg;base64,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'},
	{ name: 'Detroit', longitude: '-83.045754', latitude: '42.331427', image: 'https://media2.wnyc.org/i/100/100/c/80/photologue/photos/detroit%201.jpg'},
	{ name: 'San Diego', longitude: '-117.161084', latitude: '32.715738', image: 'data:image/jpeg;base64,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'},
	{ name: 'Dallas', longitude: '-96.796988', latitude: '32.776664', image: 'http://www.texasenterprise.utexas.edu/sites/texasenterprise.utexas.edu/files/imagecache/100square/Dallas_400W_LR.jpeg'},
	{ name: 'San Jose', longitude: '-121.886329', latitude: '37.338208', image: 'https://www.sanjoseca.gov/%5Cimages%5CCivicAlerts%5C44%5CThumbNails%5CSalt%20Ponds%20and%20RWF%20v2_100x100_thumb.jpg'},
	{ name: 'Boulder', longitude: '-105.270546', latitude: '40.014986', image: 'http://goldensolar.net/wp-content/uploads/2014/10/boulder-colorado-is-attempting-to-establish-its-own-municipal-energy_16001083_24834_1_14080537_500-100x100.jpg'},
	{ name: 'Oakland', longitude: '-122.271114', latitude: '37.804364', image: 'https://fbexternal-a.akamaihd.net/safe_image.php?d=AQCP0GkdHghNfr3Q&w=100&h=100&url=http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fd%2Fd5%2FOAKLAND%252C_CA%252C_USA_-_Skyline_and_Bridge.JPG%2F720px-OAKLAND%252C_CA%252C_USA_-_Skyline_and_Bridge.JPG&cfs=1&f&fallback=hub_city'},
	{ name: 'Las Vegas', longitude: '-115.139830', latitude: '36.169941', image:'http://estherdelurgio.smugmug.com/Photography/Las-Vegas-Nevada/i-tC7MNmK/0/Ti/Las%20Vegas%20at%20night-Ti.jpg'},
	{ name: 'Denver', longitude: '-104.990251', latitude: '39.739236', image: 'http://www.denverdigitalphotography.com/Portfolio/Denver/i-4GhZBzg/3/Ti/OctoberMorning005%20copy%20copy-Ti.jpg'},
	{ name: 'Nashville', longitude: '-86.781602', latitude: '36.162664', image:'http://media.bizj.us/view/img/710911/austinskyline*100xx1316-1316-611-0.jpg'},
	{ name: 'Minneapolis', longitude: '-93.265011', latitude: '44.977753', image:'http://i.forbesimg.com/media/lists/places/minneapolis-st-paul-mn_100x100.jpg'},
	{ name: 'Releigh', longitude: '-78.638179', latitude: '35.779590', image:'http://www.janicerosenberg.com/portals/janicerosenberg/Raleigh.png'},
	{ name: 'Baltimore', longitude: '-76.612189', latitude: '39.290385', image:'http://www.propertymanagementinsider.com/wp-content/uploads/Baltimore-Inner-Harbor_featured1-100x100.jpg'},
	{ name: 'Charlotte', longitude: '-80.843127', latitude: '35.227087', image:'http://www.biddingtraveler.com/images/hotela/4bff.jpg'},
	{ name: 'Pittsburgh', longitude: '-79.995886', latitude: '40.440625', image:'http://www.propertymanagementinsider.com/wp-content/uploads/pittsburgh-the-point_featured11-100x100.jpg'},
	{ name: 'St. Louis', longitude: '-90.199404', latitude: '38.627003', image:'http://www.adg-stl.com/wp-content/gallery/comprehensive-energy-master-plan-for-the-city-of-st-louis/thumbs/thumbs_173712964okgukt_fs.jpg'},
	{ name: 'Phoenix', longitude: '-112.074037', latitude: '33.448377', image:'http://d1snss4y4kpfjl.cloudfront.net/unsafe/100x100/smart/11443_original_Phoenix_City_Highlights_-_Half_Day_Tour_1388029557.jpg'},
	{ name: 'Cleveland', longitude: '-81.694361', latitude: '41.499320', image:'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRc6xLKHQSqohqZ775SJxTXkfiuBuUjjEvRdHzNvbRuSv5lcPC2'},
	{ name: 'Kansas City', longitude: '-94.578567', latitude: '39.099727', image:'http://pl.practicelink.com/products/wp-content/uploads/2014/12/cleveland1.png'},
	{ name: 'Orlando', longitude: '-81.379236', latitude: '28.538335', image:'http://soccerstadiumdigest.com/wp-content/uploads/2015/07/new_orlando_july31_1-100x100.jpg'},
	{ name: 'Salt Lake City', longitude: '-111.891047', latitude: '40.760779', image:'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQfKgz0en_YmpBdZUWIS1Q201rZcQhks8b2Crj2aaoI8Ho5SDzY'}])
																																									
posts = Post.create([
	{author:"Michelle M.", title:"Sunny California", body: "California, a western U.S. state, stretches from the Mexican border along the Pacific for nearly 900 miles. It's known for its dramatic terrain encompassing cliff-lined beaches, redwood forest, the Sierra Nevada Mountains, Central Valley farmland and the arid Mojave Desert. Its cities include sprawling Los Angeles, seat of the Hollywood entertainment industry, and hilly San Francisco, home to the Golden Gate Bridge."},
	{author:"Josh B.", title:"The Foggy City", body: "San Francisco has become somewhat of a home to me. The still waters of the bay collide with the raging waves of the pacific. Not many have the opportunity to see both sunrise and sunset over water in the same city. If you are in need of a hike, S.F. is the place to go. The best hiking locations are just a hike away from your current location.. so go take a hike! This paragraph is now becoming a ramble of words and other nonesense."}
])
