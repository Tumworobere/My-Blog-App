# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
third_user = User.create(name: 'Adam', photo: 'https://genericphoto.com/user1', bio: 'Software developer from Taiwan')



post1 = Post.create(user: first_user, title: 'Post 1 title', text: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?')
post2 = Post.create(user: second_user, title: 'Post 2 title', text: 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.')
post3 = Post.create(user: first_user, title: 'Post 3 title', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
post4 = Post.create(user: third_user, title: 'Post 4 title', text: 'Aliquam gravida suscipit sapien, non tempus ex dictum euismod. Donec imperdiet euismod leo nec tincidunt. Etiam suscipit, orci a eleifend rhoncus, arcu elit consectetur est, non porta lectus purus gravida turpis. Vivamus nec aliquam mauris. Nam eu molestie nibh. Nam at tristique mauris. Praesent eleifend odio eget viverra commodo. Proin aliquet augue id felis pharetra, id imperdiet sapien feugiat. Phasellus vulputate malesuada mauris. Mauris vel dolor in felis fringilla laoreet non eu leo. In vel iaculis justo. Proin eget viverra nisi. Nullam eget orci sagittis, commodo eros quis, porta arcu. Integer erat massa, venenatis eget arcu convallis, porta congue urna. Nunc ut elit sed magna ullamcorper finibus.')

comment1 = Comment.create(text: 'Comment1 Mauris et metus nulla. Donecs semper libero u at orci mattis, ', user: first_user, post: post1)
comment2 = Comment.create(text: 'Comment2 Sed suscipit sodales libero vligula porta accumsan.', user: second_user, post: post2)
comment3 = Comment.create(text: 'Comment3 faucibus scelerisque sapiennim eu, tristiquee et consequat', user: third_user, post: post3)
comment4 = Comment.create(text: 'Comment4 Class aptent taciti sociosqu adeptos himenaeos. Pellentesque nunc dolor,', user: first_user, post: post3)
comment5 = Comment.create(text: 'Comment5  Sed suscipit sodales libero vel mollis. Aenean euismod lm dapibus odio nec sapien rhoncus, ve', user: second_user, post: post1)
comment6 = Comment.create(text: 'Comment6 get viverra commodo. Proin aliquet augue id felis pharetra, ', user: third_user, post: post2)
