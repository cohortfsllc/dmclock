#!/bin/env ruby

data = [[5,3908],
  [10,4597],
  [20,5366],
  [40,6333],
  [60,6889],
  [80,7918],
  [100,8733]];

logf = Math.method(:log2)

n = data.size;

def sum(a)
  a.reduce { |memo, o| memo + o }
end

b_num = n * sum(data.map { |d| d[1] * logf.call(d[0]) }) - sum(data.map {|d| d[1]}) * sum(data.map{|d| logf.call(d[0]) })

b_den = n * sum(data.map{|d| logf.call(d[0])**2}) - sum(data.map{|d| logf.call(d[0])})**2

b = b_num / b_den
a = (sum(data.map{|d| d[1]}) - b * sum(data.map{|d| logf.call(d[0])})) / n

puts "a is #{a}, b is #{b}"
