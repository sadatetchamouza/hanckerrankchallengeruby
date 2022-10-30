# Complete the 'kangaroo' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER x1
#  2. INTEGER v1
#  3. INTEGER x2
#  4. INTEGER v2
#

def kangaroo(x1, v1, x2, v2)
    # Write your code here
    response = ''
    if x2 > x1 && v2 > v1
        response = "NO"
    elsif (v1 - v2) > 0 && (x2 - x1) % (v1 - v2) == 0
        response = "YES"
    else
        response = "NO"
    end
    response
end