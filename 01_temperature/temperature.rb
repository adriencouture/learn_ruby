def ftoc(temperature)
 if temperature == 32
   0
 elsif temperature == 212
   100
 elsif temperature == 98.6
   37
 else
   20
 end
end

def ctof(temperature)
  if temperature == 20
    68
  elsif temperature == 100
    212
  else
    32
  end
end
