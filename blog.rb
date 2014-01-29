require "./user"
require "./post"

user = User.create({
  id: 1,
  first_name: "Leo",
  last_name: "Teo"
})

post1 = Post.create({
  id: 1,
  title: "My blog post",
  body: "Bacon ipsum dolor sit amet beef shoulder frankfurter brisket short loin. Capicola shankle pork belly, turducken chuck doner leberkas short loin. Boudin strip steak pork loin shankle flank spare ribs shoulder. Ball tip leberkas beef shank jerky beef ribs tongue capicola short loin pork belly filet mignon ribeye pork doner.",
  user_id: 1
})

post2 = Post.create({
  id: 2,
  title: "My blog post 2",
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi odio mauris, auctor ut varius non, tempus nec nisi. Quisque at tellus risus. Aliquam erat volutpat. Proin et dolor magna. Sed vel metus justo. Mauris eu metus massa. Duis viverra ultricies nisl, ut pharetra eros hendrerit non. Phasellus laoreet libero non eros rhoncus sed iaculis ante molestie. Etiam arcu purus, dictum a tincidunt id, ornare sed orci. Curabitur ornare ornare nulla quis tincidunt. Morbi nisi elit, mattis nec bibendum vel, facilisis eu ipsum. Phasellus non dolor erat, in placerat lacus. Aliquam pulvinar, est eu commodo vulputate, neque elit molestie lorem, sed vestibulum felis erat et risus. Nulla non velit odio.",
  user_id: 1
})

post3 = Post.create({
  id: 3,
  title: "My blog post 3",
  body: "Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.",
  user_id: 1
})

posts = []
posts.push post1
posts.push post2
posts.push post3

user.posts = posts

user.posts.each do |post|
  puts post.title
  puts post.body
  puts 
end
