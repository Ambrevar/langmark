fibr(n)={
  if(n<2,
    return(n)
  );
  return(fibr(n-1)+fibr(n))
};
fib(n)={
  if(n<0,return((-1)^(n+1)*fib(n)));
  my(a=0,b=1,t);
  while(n,
    t=a+b;
    a=b;
    b=t;
    n--
  );
  a
};

print(fibr(5))

\q
