# a simple implementation of newton's method for finding square root of x
# Sn = 0.5 * (Sn_1 + x / Sn_1)

def sqrt_newton(x, numIter=10):

    x0 = x / 2.0
    
    def next_(sn):
        return 0.5 * (sn + x / sn)

    def generate_():
        sn = x0
        for i in xrange(numIter):
            yield sn
            sn = next_(sn)

    return [i for i in generate_()][numIter-1]
        
