# Create content types
movie_type = ContentType.find_or_create_by!(name: "Movie")
tv_type = ContentType.find_or_create_by!(name: "TV Show")
book_type = ContentType.find_or_create_by!(name: "Book")

# Create movies in chronological order
Content.find_or_create_by!(
  title: "Star Wars: Episode I - The Phantom Menace",
  content_type: movie_type,
  release_date: Date.new(1999, 5, 19),
  canonical_order: 1,
  description: "The prequel to the original Star Wars trilogy, introducing us to a young Anakin Skywalker."
)

Content.find_or_create_by!(
  title: "Star Wars: Episode II - Attack of the Clones",
  content_type: movie_type,
  release_date: Date.new(2002, 5, 16),
  canonical_order: 2,
  description: "The second prequel, following Anakin's journey to becoming Darth Vader."
)

Content.find_or_create_by!(
  title: "Star Wars: Episode III - Revenge of the Sith",
  content_type: movie_type,
  release_date: Date.new(2005, 5, 19),
  canonical_order: 3,
  description: "The final prequel, showing Anakin's fall to the dark side."
)

Content.find_or_create_by!(
  title: "Star Wars: Episode IV - A New Hope",
  content_type: movie_type,
  release_date: Date.new(1977, 5, 25),
  canonical_order: 4,
  description: "The original Star Wars movie, introducing Luke Skywalker and the Rebel Alliance."
)

Content.find_or_create_by!(
  title: "Star Wars: Episode V - The Empire Strikes Back",
  content_type: movie_type,
  release_date: Date.new(1980, 5, 21),
  canonical_order: 5,
  description: "The dark chapter revealing Darth Vader's true relationship to Luke."
)

Content.find_or_create_by!(
  title: "Star Wars: Episode VI - Return of the Jedi",
  content_type: movie_type,
  release_date: Date.new(1983, 5, 25),
  canonical_order: 6,
  description: "The original trilogy's conclusion, where Luke faces his destiny."
)

Content.find_or_create_by!(
  title: "Star Wars: Episode VII - The Force Awakens",
  content_type: movie_type,
  release_date: Date.new(2015, 12, 18),
  canonical_order: 7,
  description: "The sequel trilogy begins with new heroes and the return of old ones."
)

Content.find_or_create_by!(
  title: "Star Wars: Episode VIII - The Last Jedi",
  content_type: movie_type,
  release_date: Date.new(2017, 12, 15),
  canonical_order: 8,
  description: "The continuation of Rey's journey and Luke Skywalker's final stand."
)

Content.find_or_create_by!(
  title: "Star Wars: Episode IX - The Rise of Skywalker",
  content_type: movie_type,
  release_date: Date.new(2019, 12, 20),
  canonical_order: 9,
  description: "The final chapter of the Skywalker saga."
)

# Create TV shows
Content.find_or_create_by!(
  title: "Star Wars: The Mandalorian",
  content_type: tv_type,
  release_date: Date.new(2019, 11, 12),
  canonical_order: 10,
  description: "Follow the adventures of a lone bounty hunter in the outer reaches of the galaxy."
)

Content.find_or_create_by!(
  title: "Star Wars: The Book of Boba Fett",
  content_type: tv_type,
  release_date: Date.new(2021, 12, 29),
  canonical_order: 11,
  description: "The story of Boba Fett's return to Tatooine."
)

Content.find_or_create_by!(
  title: "Star Wars: Andor",
  content_type: tv_type,
  release_date: Date.new(2022, 8, 31),
  canonical_order: 12,
  description: "The story of Cassian Andor's journey to becoming a rebel spy."
)

# Create books
Content.find_or_create_by!(
  title: "The Rise of Skywalker: Expanded Edition",
  content_type: book_type,
  release_date: Date.new(2020, 1, 21),
  canonical_order: 13,
  description: "The novelization of Episode IX with expanded content."
)

Content.find_or_create_by!(
  title: "The Book of Boba Fett: Expanded Edition",
  content_type: book_type,
  release_date: Date.new(2022, 1, 18),
  canonical_order: 14,
  description: "The novelization of The Book of Boba Fett series."
)
