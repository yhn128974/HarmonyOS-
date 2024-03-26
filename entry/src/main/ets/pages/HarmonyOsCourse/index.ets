


interface router {
  url: string,
  title: string,
}

@Entry
@Component
struct Index {
  @State routers: router[] = [{
    url: 'pages/HarmonyOsCourse/simple_page_component/animation/animation"',
    title: '动画',
  }

  ]

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        List() {
          ForEach(this.routers, (item: router, index) => {
            Row() {
              Text(item.url)

            }.with('100%').onclick(() =>{
              router
            })
          })
        }

      }
      .width('100%')
    }
    .height('100%')
  }
}

