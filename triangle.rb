# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def triangle(a, b, c)
    sides = [a, b, c].sort!
    x, y, z = sides
    if sides.any? { |s| s.zero? } 
        raise TriangleError
    elsif sides.any? { |s| s < 0 } 
        raise TriangleError
    elsif x + y <= z
        raise TriangleError
    end

    if sides.uniq.length == 1
        return :equilateral
    elsif sides.uniq.length == 2
        return :isosceles
    else
        return :scalene
    end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
