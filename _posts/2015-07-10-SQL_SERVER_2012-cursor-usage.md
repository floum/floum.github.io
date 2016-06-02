---
layout: post
title: 'SQL Server 2012 Cursor usage'
---
# Context

* SQL Server 2012

# Problem

* You have to apply the same procedure on many sql records

* You cannot figure out a way to do this in one request

# Solution

Use a cursor

{% highlight sql %}
-- declare the variables into which you will store cursor data
DECLARE @variable int;

-- declare the cursor on the rows from the select clause
DECLARE cursor_name CURSOR FOR [SELECT CLAUSE]

-- open the cursor
OPEN cursor_name

-- initialize cursor data
FETCH NEXT FROM cursor_name INTO @variable

-- start looping through records (if any)
WHILE @@FETCH_STATUS = 0
BEGIN
  -- instructions

  FETCH NEXT FROM cursor_name INTO @variable
END

CLOSE cursor_name
DEALLOCATE cursor_name
{% endhighlight %}
