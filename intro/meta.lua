--OO

Rectangle = {x = 100, y = 1000, width = 10, height = 20}
Rectangle.__index = Rectangle

function Rectangle:new (o)
    setmetatable(o, self)
    return o
end

function Rectangle:area ()
    return self.width * self.height
end

r = Rectangle:new{width = 40, height = 60}

print(r:area(), r.x, r.y)
