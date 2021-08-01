# complex2math.com

These are the source files for my homepage [complex2math.com](https://complex2math.com).

I use [hugo](https://gohugo.io) to generate this website on account of its amazing speed.

## Useful snippet

### Display 5 most recent article in the homepage

c.f. post #3 from [here](https://discourse.gohugo.io/t/display-3-most-recent-blog-posts-but-not-other-pages/22264/3)
```
{{- range ( where site.RegularPages "Section" "blog" | first 5 ) }}
```
