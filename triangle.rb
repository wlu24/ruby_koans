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
  sides = [a, b, c]

  unless (a + b > c) && (a + c > b) && (b + c > a)
    raise TriangleError, 'Any two sides of a triangle should add up to more than the third side'
  end

  side_set = sides.uniq

  # A side should be of length > 0
  side_set.each { |side| raise TriangleError, 'A side should be of length > 0' if side < 1 }

  case side_set.length
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  else
    raise TriangleError, 'Wrong number of sides'
  end


end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
