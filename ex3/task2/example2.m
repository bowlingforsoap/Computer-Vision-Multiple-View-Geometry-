clc

'Initial vec'
vec = rand(1, 3)


'Skew-symmetric matrix'
skew = vecToSkew(vec)

'Back to vec'
skewToVec(skew)

log = logm(skew)
exp = expm(skew)
