require_relative 'body'

class System



  def initialize
    @bodies = []
  end

  def bodies
    @bodies
  end



  def add(celestial)
    @bodies << celestial

  end

  def total_mass
    total = 0
    @bodies.each do |body|
      total += body.mass
    end
    return total
  end


end
p'-------------------------------solar system-------------------------------------------------------------'
solar_system = System.new
p'---------------------------------bodies created---------------------------------------------------------'
moon = Moon.new('Moon',7340000000000000000000000, 27, 'earth')
sun = Star.new('Sun', 194000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'G-star')
planet = Planet.new('Earth',100000000000000000000000000000000000, 30, 365)
p '-------------------------------------------------------------------------------------------------------'
p solar_system.add(moon)
p solar_system.add(sun)
p solar_system.add(planet)
#
p solar_system.bodies
p '----------------------------------mass---------------------------'
p solar_system.total_mass
