
@Component
export struct Searcher {
  @State message: string = 'there is search bar';
  build() {
    Row() {
      Column() {
        Text(this.message).width('100%').height(30).backgroundColor(Color.Blue)
      }
      .width('100%')
    }

  }
}

