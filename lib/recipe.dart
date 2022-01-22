class Recipe {
  String title;
  String user;
  String imageUrl;
  String description;
  String isFavorite;
  int _favoriteCount;

  Recipe(this.title, this.user, this.imageUrl, this.description,
      this.isFavorite, this._favoriteCount);
}
