class Post{
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });
  
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: 'A',
    author: '睡觉了咖啡时光',
    imageUrl: 'http://img4.imgtn.bdimg.com/it/u=2465752662,1622343376&fm=26&gp=0.jpg'
  ),
  Post(
    title: 'B',
    author: '舒服的时光水果',
    imageUrl: 'http://img4.imgtn.bdimg.com/it/u=3023616063,229979107&fm=26&gp=0.jpg'
  )
];