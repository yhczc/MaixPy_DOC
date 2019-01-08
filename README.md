MaixPy Documentation 
======

## What is MaixPy


## Let's get started


## Source code

[MaixPy](https://github.com/sipeed/MaixPy)


![Sipeed](assets/image/icon_sipeed.png)




```c
int main()
{
    printf("efefe");
}

```


```js
window.$docsify = {
  markdown: {
    smartypants: true,
    renderer: {
      link: function() {
        // ...
      }
    }
  }
}
```

```python

import machine

i2c = machine.I2C(1)
```


:100:

```katex
\boxed{ab}
\displaystyle\sum_{i=1}^n
```


<div class="demo-theme-preview">
  <a data-theme="vue">vue.css</a>
  <a data-theme="dark">dark.css</a>
</div>


<style>
  .demo-theme-preview a {
    padding-right: 10px;
  }

  .demo-theme-preview a:hover {
    text-decoration: underline;
    cursor: pointer;
  }
</style>

<script>
  var preview = Docsify.dom.find('.demo-theme-preview');
  var themes = Docsify.dom.findAll('[rel="stylesheet"]');

  preview.onclick = function (e) {
    var title = e.target.getAttribute('data-theme')

    themes.forEach(function (theme) {
      
      if(theme.tilte != '' && title && title != ''){
        theme.disabled = theme.title != title
      }
    });
  };
</script>


