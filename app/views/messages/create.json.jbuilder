  json.date  @message.created_at.strftime("%Y/%m/%d %H:%M")
  json.body  @message.body
  json.image  @message.image.url
  json.id  @message.id
  json.name  @message.user.name
