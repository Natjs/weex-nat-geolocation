# nat-geolocation

- [Documentation](http://natjs.com/#/reference/geolocation)
- [Github](https://github.com/natjs/weex-nat-geolocation)

## Installation
```
weexpack plugin add nat-geolocation
```

```
npm install natjs --save
```

## Usage

Use in weex project (`.vue`/`.we`)

```html
<script>
import Nat from 'natjs'

// get
Nat.geolocation.get((err, ret) => {
    console.log(ret)
})

// watch
Nat.geolocation.watch((err, ret) => {
    console.log(ret)
})

// clearWatch
Nat.geolocation.clearWatch()

</script>
```

See the Nat [Documentation](http://natjs.com/) for more details.
