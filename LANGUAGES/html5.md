# HTML5

## SEMANTIC TAGS

<!DOCTYPE html>
// need this even before anything else

<mark> // for highlighting
<video> // for youtube videos

// self closing tags no longer need forward slash
<img>

## textarea sizing

<textarea id="w3review" name="w3review" rows="4" cols="50">

## Grouping Table Headers

```
<thead>
  <tr><th id="feature">Feature</th><th>Category</th><th>B</th><th>P</th></tr>
</thead>
<tbody>
  <tr><th id="baseline" col-span="4">Baseline</th></tr>
  <tr><th scope="row" headers="baseline feature">Account activity</th><td>Accounts</td><td>59%</td><td>34%</td></tr>
 ...
</tbody>
```

- ref: https://stackoverflow.com/questions/36543889/what-html5-markup-for-grouping-headings-in-a-table
