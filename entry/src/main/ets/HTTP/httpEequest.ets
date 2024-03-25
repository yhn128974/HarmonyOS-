import http from '@ohos.net.http';
import router from '@ohos.router';



 function get_http_url() {

  let httpRequest = http.createHttp()

  httpRequest.request(
    'http://t.weather.sojson.com/api/weather/city/101030100', {
    method: http.RequestMethod.GET,
    extraData: {
      'param1': "value"
    },
    connectTimeout: 1000,
    readTimeout: 1000,
  }).then((res: http.HttpResponse) => {
    if (res.responseCode == 200) {

      console.log(JSON.parse(res.toString()));
    } else {
      console.log(JSON.stringify(res))
    }
  }).catch((err: http.HttpResponse) => {
    console.log(JSON.stringify(err));
  })
}

get_http_url()

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}






