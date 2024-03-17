import { Content } from './content'
import { Searcher } from './search'

@Entry
@Component
struct body {
  aboutToAppear(): void {
    console.log('aboutToAppear')
  }
  build() {
    Column() {
      // 组件
      Searcher()
      Content()
    }
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
