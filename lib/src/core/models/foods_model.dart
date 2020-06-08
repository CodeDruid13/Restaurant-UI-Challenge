class FoodsModel {
  final String name;
  final String description;
  final String image;
  final double rating;

  FoodsModel({
    this.name,
    this.image,
    this.rating,
    this.description,
  });
}

List<FoodsModel> foodsdata = [
  FoodsModel(
      name: 'Plum Strawberry Coconut Oatmeal',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      image: 'assets/images/plum strawberry coconut oatmeal.jpeg',
      rating: 4.0),
  FoodsModel(
      name: 'Strawberry Coconut Crisp',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      image: 'assets/images/strawberry coconut crisp.jpeg',
      rating: 4.5),
  FoodsModel(
      name: 'Strawberry Coconut Macaroons',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      image: 'assets/images/strawberry coconut macaroons.jpeg',
      rating: 4.2),
  FoodsModel(
      name: 'Strawberry pineapple Punch',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      image: 'assets/images/strawberry pineapple punch.jpeg',
      rating: 4.7),
  FoodsModel(
      name: 'Strawberry rhubarb Crisp',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      image: 'assets/images/strawberry rhubarb crisp.jpeg',
      rating: 4.1),
];
