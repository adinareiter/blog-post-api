Tag.create(
  text: "relationships",
)
Tag.create(
  text: "feelings",
)
Tag.create(
  text: "professional",
)
Tag.create(
  text: "family",
)
Post.create(
  title: "life sucks",
  body: "wooo",
  username: "jo",
)
Post.create(
  title: "work sucks",
  body: "lol",
  username: "Emma",
)
Post.create(
  title: "my mom is mean",
  body: "why",
  username: "jo",
)
PostTag.create(
  post_id: 1,
  tag_id: 1,
)
PostTag.create(
  post_id: 2,
  tag_id: 2,
)
PostTag.create(
  post_id: 1,
  tag_id: 3,
)
