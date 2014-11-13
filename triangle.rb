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
  # WRITE THIS CODE
  raise TriangleError, "Sides must be greater than 0" if (a <= 0 || b <= 0 || c <= 0)
  raise TriangleError, "The sum of two sides must be greater than the third" if ( a + b <= c || a + c <= b || b + c <= a)
  # I definitely used the hint link provided in about_triangle_project_2.rb. 

  if ((a == b) and (b == c) && (a == c))
  	:equilateral
  elsif (( a == b and b != c ) || ( a == c && a != b) || ( b == c && b != a ))
  	:isosceles
  elsif ((a != b) and (b != c) and (a != c))
  	:scalene
  end  	
end

# Above passes the test but I found some much more clever ways to do this on StackOverflow.
# I left my first attempt though because it feels honest. I guess refactoring would be a good idea though.
# A lot of the above code is unnecessary. There's also some interesting ways to use .sort and .uniq to accomplish the same. 

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
