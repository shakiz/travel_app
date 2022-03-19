class Messages {
  String MessageId;
  String MessageTitle;
  String MessageToPersonName;
  String MessageFromPersonName;
  String MessageDate;

  Messages(
      {required this.MessageId,
      required this.MessageTitle,
      required this.MessageFromPersonName,
      required this.MessageToPersonName,
      required this.MessageDate});
}
