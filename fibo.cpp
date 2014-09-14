#include <iostream>
#include <sstream>

unsigned long
fibo (unsigned long n )
{
    if (n < 2)
        return n;
    else
        return fibo(n-1) + fibo(n-2);
}

int
main(int argc, char** argv)
{
    unsigned long lim;
    std::stringstream(argv[1]) >> lim;
    std::cout << fibo(lim) << std::endl;
    return 0;
}
