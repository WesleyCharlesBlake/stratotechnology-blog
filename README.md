[http://blog.stratotechnology.com]

To run this image, pass in the blog url as an environment variable, and mount your ghost_data volumes as follows:

```docker run -it -e "BLOG_URL=http://127.0.0.1" -p 80:80 -v ~/ghost_data/data:/ghost/content/data -v ~/ghost_data/images:/ghost/content/images -v ~/ghost_data/themes/Material:/ghost/content/themes/Material wesleycharlesblake/stratotechnology-blog```

You can also run this using `docker-compose up`