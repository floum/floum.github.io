---
layout: post
---

# Context

I am currently renting a box in order to publish web applications.

# Usages

* git server

* web server for web applications

* database server

# Partitioning scheme

Following the Unix Philosophy (Write programs that do one thing and do it well.), 
every partition should have a clear usage, so here is my partition scheme (HDD size is really not an issue here).

{% highlight bash %}

/                   ext4   20GB
/git                ext4   10GB # Code repositories
/var/www            ext4   20GB # Websites
/var/lib/postgres   ext4   30GB # For postgresql data
/usr                ext4   40GB
/var                ext4   20GB
/tmp                ext4   10GB
/home               ext4  100GB
-----
Total                     250GB

{% endhighlight %}
