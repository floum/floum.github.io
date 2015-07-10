---
layout: post
title: 'Store a SQL Server result into a variable'
---
# Context

* SQL Server 2012

# Problem

* You want to store a SQL Server result into a variable for later use

# Solution

**make sure you do not have multiple results when you want to store the data**

{% highlight sql %}
DECLARE @variable int;

SELECT @variable = column_name FROM TABLE
{% endhighlight %}
