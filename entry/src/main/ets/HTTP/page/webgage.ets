@Entry
@Component
struct WebComponent {
  controller: WebController = new WebController();
  factor: number = 1.5;

  build() {
    Column() {
      Button('zoom')
        .onClick(() => {
          this.controller.zoom(this.factor);
        })
      Web({ src: 'www.example.com', controller: this.controller })

    }
  }
}