class PhotoModal
{
  late int id;
  late String url,title;

  PhotoModal({required this.url,required this.id,required this.title});

  factory PhotoModal.fromMap(Map m1)
  {
    return PhotoModal(url: m1['url'], id: m1['id'], title: m1['title']);
  }
}
