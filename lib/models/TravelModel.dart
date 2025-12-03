class Travelmodel {
  String id;
  String name;
  String description;
  String imageUrl;
  String location;
  String distance;
  String temp;
  String rating;
  String price;

  Travelmodel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.location,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.price,
  });
}

List<Travelmodel> travelList = [
  Travelmodel(
    id: '1',
    name: 'New York',
    description:
        'New York City, often called "The Big Apple," is the largest city in the United States and a global hub for culture, finance, and entertainment. Known for iconic landmarks like Times Square, Central Park, and the Statue of Liberty, it offers a vibrant mix of history, art, and diversity. Broadway theaters, world-class museums, and diverse neighborhoods create a unique energy. Its skyline, bustling streets, and cultural richness make New York an unforgettable city.',
    imageUrl: 'assets/images/city1.jpg',
    location: 'United States',
    distance: '500',
    temp: '28',
    rating: '4.5',
    price: '1235',
  ),
  Travelmodel(
    id: '2',
    name: 'Washington DC',
    description:
        'Washington, D.C., the capital of the United States, is a city rich in history, politics, and culture. It is home to iconic landmarks like the White House, the U.S. Capitol, and the Lincoln Memorial. The city also features world-class museums, including those of the Smithsonian Institution, and beautiful monuments along the National Mall. With its blend of government, history, and vibrant neighborhoods, Washington, D.C., is both a political center and a cultural destination.',
    imageUrl: 'assets/images/city2.jpg',
    location: 'United States',
    distance: '900',
    temp: '28',
    rating: '4.5',
    price: '1135',
  ),
  Travelmodel(
    id: '3',
    name: 'Ottawa',
    description:
        'Ottawa, the capital of Canada, is known for its beautiful architecture, scenic waterways, and rich cultural heritage. The city is home to Parliament Hill, the official residence of the Prime Minister, and numerous national museums, including the Canadian Museum of History. With its vibrant festivals, cycling paths along the Rideau Canal, and mix of English and French culture, Ottawa offers a unique blend of politics, history, and outdoor recreation, making it a charming and dynamic capital city.',
    imageUrl: 'assets/images/city3.jpg',
    location: 'Canada',
    distance: '1500',
    temp: '28',
    rating: '4.9',
    price: '2215',
  ),
  Travelmodel(
    id: '4',
    name: 'Tehran',
    description:
        'Tehran, the capital of Iran, is a bustling metropolis at the foot of the Alborz mountains. It is the political, economic, and cultural heart of the country, blending modern skyscrapers with historic bazaars and palaces. Tehran is home to museums, parks, and cultural centers, reflecting Iran’s rich heritage. Its vibrant streets, diverse neighborhoods, and dynamic lifestyle make it a city of contrasts, where tradition meets modernity amid stunning mountain views.',
    imageUrl: 'assets/images/city4.jpg',
    location: 'Iran',
    distance: '520',
    temp: '38',
    rating: '2.5',
    price: '1165',
  ),
];
