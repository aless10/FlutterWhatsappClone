class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({
      this.name,
      this.message,
      this.time,
      this.avatarUrl
      }
    );

}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Alessio Izzo",
      message: "Hey There, I'm using a whatsapp clone",
      time: "15:30",
      avatarUrl: "https://avatars0.githubusercontent.com/u/19170381?s=60&v=4"
  )
];