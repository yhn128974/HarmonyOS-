import { Content } from './content'
import { Searcher } from './search'

@Entry
@Component
struct body {
  @State isSwitchDateSoure:boolean=true;
@State isshowCount:boolean=true;


  build() {
    Column() {
      // 组件
      Searcher({isRefresh: $isSwitchDateSoure})

      if(this.isshowCount){
        Content({isChanged:this.isSwitchDateSoure})
      }else{
        Text('组件被消灭了')
      }
      Button('点击显示组件').onClick((event: ClickEvent) => {
        this.isshowCount = !this.isshowCount
      }).width('100%')
    }
  }



  aboutToAppear(): void {
    console.log('aboutToAppear')
  }

  onPageShow(): void {
    console.log('onPageShow")')
  }

  onBackPress(): boolean | void {
    console.log('onBackPress')
  }

  onpageHide(): boolean | void {
    console.log('onpageHide')

  }
  aboutToDisappear(): void {
    console.log('aboutToDisappear')
  }




}
