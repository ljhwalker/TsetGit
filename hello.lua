--[[1
function fact (n)
	if n == 0 then
		return 1
	else
		return n * fact(n-1)
	end
end

print("enter a number");
a = io.read("*number");
print(fact(a));
]]--

--[===[line = [[1020]]
n = tonumber(line)
if n == nil then
	error(line .. "is not a valid number")
else
	print(n*2)
end--]===]

--[===[
w = {x=0, y=0, label="console"}
w[1] = "another filed"
print(w[x])
print(w[y])
print(w[label])
print(w[1])
print(w[2])
--]===]
--

--[[
polyline = {color="blue", thickness=2, npoints=4,
			{x=0,   y=0},
			{x=-10, y=0},
			{x=-10, y=1},
			{x=0,   y=1},
			{a=1,  b=2, c=3},
			{a=2,  b=1, c=3}
}

print(polyline[2].x)
print(polyline[5].a)
--]]

--[[
function f(x)
	return x+x
end

x = 1
for i=1,f(x) do
	print(i)
end
	
for i=10,1,-1 do
	print(i)
end
--]]

--[[
function foo1()
	return 1
end

function foo2()
	return 1,2
end

function foo3()
	return 1,2,3
end

function foo(i)
	if i == 1 then
		return foo1()
	elseif i == 2 then
		return foo2()
	elseif i == 3 then
		return foo3()
	end
end

function max(a)
	local i = 1
	local tmp = a[i]
	for o,val in ipairs(a) do
		if val > tmp then
			tmp = val
			i = o;
		end
	end
	print(tmp,i)
end

print((foo(0)))
print((foo(1)))
print((foo(2)))
print((foo(3)))
--x,y,z = foo(),20
--print(foo())
--max({1,5,2,6,20})
--
a = {"hello", "all"}
print(unpack(a))
--]]

--[[
printstr = ""

function printf(...)
	fprint(unpack(arg))
	for i,v in ipairs(arg) do
		printstr = printstr .. tostring(v)
	end
end

function fprint(...)
	print(unpack(arg))
end

printf(1,2,3)
--]]

--[[	
a = 1;
b = 2;
	local _,x = string.find("hello hello", "hell")
print(x)
print(string.find("hello hello", "hell"))
print(select(1, string.find("hello hello", "hell")))
print(select(2, string.find("hello hello", "hell")))
--printf(1,2,3,4,5)
--print(printstr)
--]]

--[[
function test()
	local i = 1;
	return i;
end

function newCounter()
	local i = 0
	return function()
		i = i + 1
		return i
	end
end

c = newCounter();
print(test())
print(c());
]]--

--[===[
local fact 
	fact = function (n)
	if n == 0 then
		return 1
	else
		return n*fact(n-1)
	end
end

students =
{
   {name = "Wang", age = "18"},  
   {name = "Qin", age = "20" },
   {name = "Li", age = "19"},
   {name = "Wei", age = "21"},
}

for i = 1, #students do
	print(i, students[i].name, students[i].age)
end

table.sort(students, function(a, b) return (a.age > b.age) end)

print("-----------")
for k,v in ipairs(students) do
	print(k,v.name,v.age)
end

print("-----------")


names = {"wang", "qin", "li"}
ages = {wang = 18, qin = 20, li = 19}

function sortByage(names, ages)
table.sort(names, function(n1, n2) 
	return ages[n1] > ages[n2] 
	end)
	return names
	end

for k,v in ipairs(sortByage(names, ages)) do
	print(k, v)
end

--[[
names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}

function sortbygrade(names, grades)
table.sort(names, function(n1, n2)
    return grades[n1] > grades[n2]
	end)
    return names
	end

for k, v in ipairs(sortbygrade(names, grades)) do
	print(k,v)
end
--]]
--print(#students)
--print(fact(5))
--]===]

--[[
function test()
	local i = 0;
	return function()
		i = i + 1
		return i
	end
end

c = test();
print(c())
print(c())
print(c())
--]]

--[[
function iterator(t)
	i = 0
	n = table.getn(t)
	return function()
		i = i + 1
		if i <= n then
			return t[i]
		end
	end
end

t = {1,5,2,4}
it = iterator(t)
while true do
	local tmp = it()
	print(tmp)
	if tmp == nil then
		break
	end
end

for tmp in iterator(t) do
	print(tmp)
end
--]]

--[[
function test()
	local str = io.read()
	local pos = 1
	return function()
		while true do
			s,e = string.find(str, "%w+", pos)
			if s then
				pos = e + 1
				return string.sub(str, s, e)
			else
				str = io.read()
				pos = 1
			end
		end
	end
end

for k,tmp in test() do
	print(k,tmp)
end
--]]

--[[
h = {"1","2"}
print(h)

tab = {
		{a = "1",b = "2"},
		{a = "3"}
}

names = {"wang", "qin", "li"}
ages = {wang = 18, qin = 20, li = 19}

function sortByage(names, ages)
	table.sort(names, function(n1, n2) 
		return ages[n1] > ages[n2] 
		end)
	return names
end

for k,v in ipairs(sortByage(names, ages)) do
	print(k, v)
end

for i = 1,#names do
	print(names[i])
end

for k,v in ipairs(names) do
	print(k, v)
end
--]]

--[[
for i in #table do
end
for k,v ipairs(table) do
end
--]]


--[[
function iter (a, i)
	i = i + 1
	local v = a[i]
	if v then
	return i, v
	end
end

function aipairs (a)
	return iter, a, 0
end

a = {"x","y","z"}
for k,v in aipairs(a) do
	print(k,v)
end
--]]

--[[
local iterator

function allworlds()
	local state = {line = io.read(), pos = 1}
	return iterator, state
end

function iterator (state)
	while state.line do
		local s, e = string.find(state.line, "%w+", state.pos)
		if s then
			state.pos = e + 1
			return string.sub(state.line, s, e)
		else
			state.line = io.read()
			state.pos = 1;
		end
	end
	return nil
end

for k,v in iterator(state) do
	print(k, v)
end
]]--

i = 0
f = loadstring("i = i + 1")
print(i)
f()
print(i)
f()
print(i)
