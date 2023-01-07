# PHP

to split a string into an array
- explode()

to collapse an array
- implode()


to make an instance invokable

```php
<?php

class Invokable 
{
  public function __invoke(): string
  {
    return 'something';
  }
}

$instance = new Invokable();
$result = $instance();
```

