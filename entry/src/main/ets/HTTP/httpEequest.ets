import http from '@ohos.net.http';
import router from '@ohos.router';



export function get_http_url() {

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
      JSON.parse(res.result.toString())
    } else {
      console.log(JSON.stringify(res))
    }
  }).catch((err: http.HttpResponse) => {
    console.log(JSON.stringify(err));
  })


}




