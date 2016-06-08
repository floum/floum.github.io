---
title: ruby-hashes
date: 2016-06-08 12:45 UTC
tags: ruby, basics, Hash
---

#Ruby Hashes

A [Hash](http://ruby-doc.org/core-2.3.0/Hash.html)
is a dictionary-like collection of unique keys and their values.
Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index,
a Hash allows you to use any object type.

##Defining Hashes

###The Classic Way&trade;

~~~
greetings = { 'fr' => 'bonjour', 'en' => 'hello' }
~~~
{: .language-ruby }

###The OOP Way

You can create empty hashes in many ways :

~~~
hash = Hash.new                   #=> {}

hash_with_default = Hash.new(0)   #=> {}
hash_with_default[:any_key]
hash_with_default                 #=> { any_key: 0 }

hash_with_calculated_default = Hash.new { |hash, key| hash[key] = [] }
hash_with_calculated_default[:any_key]
~~~
{: .language-ruby }
