import router from '@ohos.router';


@Entry
@Component
struct Index {
  @State message: string = 'Second Page...';
  @State msg: string = (router.getParams() as Record<string, string>)['msg'];

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.msg)

        Blank()
        Button('返回index').onClick((event: ClickEvent) => {

          // router.enableBackPageAlert({
          //   message: 'Message Info'
          // });

          router.back({
            url: 'pages/UIAblility/Index',
            params: {
              src: 'Second页面传来的数据',
            }
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}

