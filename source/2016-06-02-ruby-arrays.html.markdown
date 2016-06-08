---
title: ruby-arrays
date: 2016-06-02 22:56 UTC
tags: ruby, Array, basics
---

#Ruby Arrays

[Arrays](http://ruby-doc.org/core-2.2.0/Array.html) are ordered, integer-indexed collections of any object.

##Defining arrays

Arrays of strings can be defined in many ways :

###The classic way&trade; (aka the literal constructor)

~~~
[1, 2, 3]
~~~
{: .language-ruby }

###The object oriented way : Array.new

~~~
Array.new       #=> []
Array.new(2)    #=> [nil, nil]
Array.new(2, 4) #=> [4, 4]
~~~
{: .language-ruby }

Be aware that mutable objects (like hashes, strings, arrays...) should be instantiated with a block like this :

~~~
Array.new(3) { Hash.new }
~~~
{: .language-ruby }

See this pitfall in action :

~~~
hash = Hash.new
array = Array.new(3, hash)  #=> [{}, {}, {}]
array[0][:key] = :value
array                       #=> [{key: :value}, {key: :value}, {key: :value}]
~~~
{: .language-ruby }

### String Literals

They allow you to create arrays of strings or symbols in the coolest way :

~~~
%w(array of strings)  #=> ['array', 'of', 'strings']
%i(array of symbols)  #=> [:array, :of, :symbols]
~~~
{: .language-ruby }

##Using Arrays

###Adding values

At the end :

~~~
[1, 2, 3].push(4)     #=> [1, 2, 3, 4]
~~~
{: .language-ruby }

At the start :

~~~
[1, 2, 3].unshift(0)  #=> [0, 1, 2, 3]
~~~
{: .language-ruby }

###Removing values

From the end :

~~~
[1, 2, 3].pop    #=> [1, 2]`
~~~
{: .language-ruby }

From the start :

~~~
[1, 2, 3].shift  #=> [2, 3]`
~~~
{: .language-ruby }

Note that both `Array#pop` and `Array#shift` change the array on which they are called while returning the element that was removed.

##Conclusion

That's it for the most basic uses of an array storing values.

Stay tuned for advanced usage of Arrays (mostly using the mixin Enumerable).
