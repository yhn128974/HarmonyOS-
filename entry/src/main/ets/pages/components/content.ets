
@Component
export struct Content {
  @State message: string = 'there is content ';
  build() {
    Row() {
      Column() {
        Text(this.message).width('100%').height(30).backgroundColor(Color.Pink)
      }.width('100%')
    }
  }
}

