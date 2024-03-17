@Component
export struct Content {
  @State message: string = 'there is content ';
  @Prop isChanged: boolean ;
  @State fruits: Array<string> = ['苹果', '香蕉', '橘子']

  build() {
    Row() {
      Column() {
        ForEach(this.fruits, (item: string, index) => {
          Row() {
            Text(this.message).width('100%').height(30).backgroundColor(Color.Pink).fontColor(
              this.isChanged ? Color.Blue : Color.Black
            )
          }.onClick(() => {
            this.isChanged = !this.isChanged
          })
        })

      }.width('100%')
    }
  }
}

