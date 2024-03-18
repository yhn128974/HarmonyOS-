import { Item } from './item';
import { Title } from './title';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State missions: Array<string> = ['做作业', '打游戏', '喝水']
  @State allFished: boolean = false;

  build() {
    Row() {
      Column() {
        Title({allFished:$allFished})
        ForEach(this.missions, (mission: string, index: number) => {
          Column() {
            Item({ mession: mission, allFished: this.allFished })
          }

        })

      }
      .height('100%')
    }
  }
}
