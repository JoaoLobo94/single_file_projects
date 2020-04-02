# frozen_string_literal: true

require 'pry'
def multiply_opt(x, y)
  return x * y if x.to_s.length <= 1 || y.to_s.length <= 1

  # Not sure exactly how to define n
  n = [x.to_s.length, y.to_s.length].max
  k = (n + 1) / 2

  x_mid = x.to_s.length - k
  y_mid = y.to_s.length - k

  a = x.to_s[0..x_mid - 1].to_i
  b = x.to_s[x_mid..-1].to_i
  c = y.to_s[0..y_mid - 1].to_i
  d = y.to_s[y_mid..-1].to_i

  # Recursive Calls
  s1 = multiply_opt(a, c)
  s2 = multiply_opt(b, d)
  s3 = multiply_opt((a + b), (c + d))
  s4 = s3 - s1 - s2

  (10**(2 * k)) * s1 + (10**k * s4) + s2
end

p multiply_opt(3_141_592_653_589_793_238_462_643_383_279_502_884_197_169_399_375_105_820_974_944_592,
               2_718_281_828_459_045_235_360_287_471_352_662_497_757_247_093_699_959_574_966_967_627)
