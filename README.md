# node-red-puppeteer-playwright

Agrego chromium, puppeteer y Playwright a la imagen Docker de node-red:latest

Para utilizar las librerías desde los nodos hay que modificar el archivo `settings.js` y agregar en `functionGlobalContext`

```javascript
    functionGlobalContext: {
        // os:require('os'),
        puppeteer:require('puppeteer'),
        playwright:require('playwright-core')
    }
```

Para usar playwright desde un nodo de función:
```
const { chromium } = global.get('playwright')
```

Para usar puppeteer desde un nodo de función:
```
const puppeteer = global.get('puppeteer')
```
