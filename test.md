Welcome
=======

Hello and welcome to 1-UP's Ruby workshop. Whether you're entirely new to programming, new to the Ruby language or just want to learn something new - we hope that you will get something of benefit. You can work alone, or in pairs. Pair programming is a very good technique that is used alot in Agile teams. While it may seem like you'd get less work done with two programmers per computer, just think how much of your programming time are you spending actually typing and how much are you spending *thinking*.

You can see how to install Ruby on you operating system of choice [here](https://www.ruby-lang.org/en/installation/).

Basic syntax
============

First off let's take a look at some basic methods in Ruby. `puts()` is used to print text to the screen. Try typing this in into a file called `anything.rb` and running it with `ruby anything.rb`.

```ruby
puts("Hello World!")
puts "Hello world!"
```

We can see that "Hello World!" is printed twice, even though the second time the brackets were missing! In Ruby methods which take only one argument don't need brackets - this might seem weird if you're coming from other languages, but similar things happen in many languages it is often just that we don't think about what is happening behind the scenes.

```ruby
# Print out some arithmetic
puts 1+2
puts 1.+(2)
```

These two lines do exactly the same thing. As it turns out the operators we use all the time are just methods like anything else and can be called with that standard `thing1.method(argument)` syntax. The process of making an easier to read form of elements of a programming language is called *sugar*. Ruby is a very sugary language - I'd argue this makes it pretty sweet to write ;)

Let's try and make this a little more personal by printing out your own name - we can either get this from standard input or from command line arguments. In order to make this workshop a little less of a walkthrough, I'm going to try to avoid just giving you code to run and instead give you the building blocks and let you come up with a solution, this is to make it less tedious for those with some (or lots!) of programming experience. If you are new, and find yourself getting stuck be sure to ask for help!

Read the following snippet, and see if you can print out a greeting to yourself, giving your name from standard input in just one line.

```ruby 
someInput = gets.chomp
# gets is used to get a line of input from standard in
# chomp is used to 'eat up' newline characters off of strings

string1 = "Ruby"
string2 = "open source"

puts "#{string1} is completely #{strings2}"
# #{variable} is used to interpolate (include) variables in a string.
# If you're used to other languages (Python, Java, C*), Ruby also supports interpolation in their style.
puts "%s is completely %s" % [string1, string2]
```

Assuming you've got a solution for that (don't worry if it's a few lines) let's compare that to the same thing in Java.

```java
import java.io.*;
public class example
{
  public static void main (String[] args)
  {
    try
    {
      BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in));
      String name;
      name = stdin.readLine();
      System.out.println("Hello " + name);
    } catch (IOException e) {
      System.err.println("IOException: " + e.getMessage());
    }
  }
}

```

A lot longer and harder to understand right? Maybe this will give an insight into why ruby programmers start preferring it so much over other languages. While this is a tiny example, the extra readability and ease of writing can make a huge difference in big projects!

Collections
===========

In programs we often want to have groups of things, the main ways we represent this is with `arrays` and `hashes`. Hashes are also called maps, dictionaries and hashmaps in other languages.

```ruby
animals = ["dog", "cat", "hamster"]
puts animals

people = ["charlie", "mark", "dave"]
puts people[0]
puts people.first
puts people

numbers = [78, 0, 47.8, -100, 1/0.0, Math::PI]
puts numbers
puts numbers.first
puts numbers.max
# Arrays come with some useful methods

mixed = [78, nil, "charlie"]
puts mixed
# We can easily mix types in arrays (as everything is an object)

petHash = {"charlie" => "dog", "mark" => "cat", "dave" => "hamster"}
puts petHash.keys
puts petHash.values
puts petHash["charlie"]
puts petHash["dave"]

petHash["lewis"] = "snake"
puts petHash
```

If we wanted to do some simple operations, like put the two arrays `animals` and `people` together to make the hash petHash we normally might think in terms of loops. Going through every element in the arrays and adding them into a hash. In Ruby this is not very idiomatic - in fact it may shock you to learn that Ruby has no `For` construct!

```ruby
petHash = Hash[people.zip(animals)]
# This is (one of the ways) how we can do the above in Ruby.
```

Control Flow
============
