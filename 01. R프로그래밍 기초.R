a <- 5
b <- 6
c <- a+b
print(c)
ls()

help("max")

x <- 10
y <- 50
z <- c("three", "blind", "mice")
f <- function(n,p) sqrt(p*n)
ls()
ls.str()
rm(list = ls())

c(1,2,3,4,5)
c(1*pi, 2*pi, 3*pi)
c("HJ", "loves", "CE")
c(TRUE, TRUE, FALSE, TRUE)

v1 <- c(1,2,3)
v2 <- c(4,5,6)
c(v1,v2)

v3<- c("A", "B", "C")
c(v1,v3)

mode(3.141592)

1:5
9:0
seq(from=1, to=5, by=2)
rep(1, times=10)

s <- as.Date("2022-05-04")
e <- as.Date("2022-05-08")
seq(s,e,1)
seq(from=s, by=2, length.out=7)

a <- 3
a == pi
a != pi
a < pi
a <= pi

v <- c(3,pi,4)
w <- c(pi,pi,pi)
v == w
v != w
v == pi
pi == v

any(v==pi)
all(v==pi)

fib <- c(0,1,1,2,3,5,8,13,21,34)
fib
fib[1]
fib[2]
fib[0]
fib[1:3]
fib[c(1,2,4,8)]
fib[-1]

fib < 10
fib[fib %% 2 == 0]

years <- c(1998, 2000)
names(years) <- c("Coad", "HyunJu")
years
years["HyunJu"]
years[c("Coad", "HyunJu")]

v <- c(11,12,13,14,15)
w <- c(1,2,3,4,5)
v+w
v-w
v*w
v/w
v^w
w-mean(w)

cv <- function(x) sd(x)/mean(x)
x <- c(1:10)
cv(x)

mean(x)
cv(1:10)

gcd <- function(a,b){
  if(b == 0) return (a)
  else return (gcd(b, a%%b))
}

gcd(8,2)
gcd(100, 20)

getwd()
setwd("Rtest")

search()  # 현재 메모리에 로딩된 패키지 
library() # (패키지이름)

num1 <- NA
is.na(num1)
num2 <- NULL
is.null(num2)

TRUE & FALSE
TRUE | FALSE
!TRUE

c(TRUE, TRUE) & c(TRUE, FALSE)
c(TRUE, TRUE) && c(TRUE, FALSE)

# 팩터 
f <- factor('s', c('s', 't'))
f

nlevels(f)
levels(f)

ordered('x', c('x','y','z'))

# 벡터 
a <- c('x', 'y', 'z')
a[1]
a[-3]
a[-1]
a[c(1,2)]
a[2:3]

'x' %in% c('x', 'y', 'z') # 벡터에 x값이 저장되어 있는지 
a <- c(10,20,30,40)
a+1

# 생성 문법 
seq(1,5,2)
5:1

rep(1:2 times = 4)
rep(1:2 each = 4)
rep(1:2 each = 4, times = 4)

# 리스트 
(a <- list(names = "Data", num = 100))
$names
$num

# 생성함수
matrix(c(10,20,30,40), nrow=2)
matrix(c(10,20,30,40), ncol=1)

a <- matrix(1:4, ncol=2)
rownames(a)
rownames(a) <- c('one', 'two')
a
colnames(a) <- c('one', 'two')
a

matrix(c(1:9), nrow=3, byrow=TRUE)  # 행 우선
matrix(c(1:9), nrow=3, dimnames = list(c('A', 'B', 'C'), c('D', 'E', 'F')))

a <- matrix(1:9, ncol=3)
a[2:3,]
a[,1:2]

a*3
a-a
a%*%a   # 행렬 곱

# array
array(11:20, dim=c(2,5))

# 데이터 프레임
(a <- data.frame(x=c(1,2,3,4,5), y=c(6,7,8,9,10)))
(a <- data.frame(x=c(1,2,3,4,5), y=c(6,7,8,9,10), z=c('s', 'f', 's', 'f', 's')))
str(a)

a$x
a$x <- 11:15
a

a$w <- c(1:5)
a

colnames(a) <- c('num1', 'num2', 'num3', 'num4')
a
rownames(a) <- c(6:10)
a

a[2,]
a[2,1]
a[c(1,3), 2]
a[-2,-2]
a[,c('x', 'y', 'w', 'z')]
a[,c('num1')]

a[,c('num4'), drop=FALSE]
(a <- data.frame(num1=1:3, num2=4, num3=7:9))
a[,names(a) %in% c('num2', 'num3')]
a[, !names(a) %in% c('num1')]

# head(), tail(), View()
a
a <- data.frame(x=1:100)
head(a)
tail(a)
head(a,20L)

View(a)

# 타입 판별 함수
class(c(10,20))  
class(matrix(c(10,20)))
class(data.frame(a=c(10,20), b=c(30,40)))

is.factor(factor(c('a', 'b')))
is.numeric(1)
is.character(c('a', 'b'))
is.data.frame(data.frame(a=1:5))

# 타입 변환 함수
a <- c('x', 'y', 'z')
as.factor(a)
as.character(as.factor(a))

a <- matrix(1:4, ncol=2)
as.data.frame(a)
data.frame(list(x=c(1:3), y=c(4:6)))

# 흐름 제어
if(TRUE){
  print('참')
  print('Hello')
} else {
  print('거짓')
  print('World')
}

x <- c(6,7,8,9,10)
ifelse(x %% 2 ==1, '홀수', '짝수')

for (a in 1:9) {
  result = 3 * a
  print(result)
}

a <- 1
while(a<10) {
  result = 3 * a
  print(result)
  a <- a+1
}

i <- 0
while (i <= 15) {
  i <- i+1
  if (i %% 3 != 0) {
    next  # print() 실행하지 않고 while문 처음으로 
  }
  print(i)
}

# 벡터 연산
a <- c(1,3,5,7,9)
a + a
a == c(1,3,5,7,7)

x <- c(1,3,5)
y <- c(2,2,2,2,2) # 남은 변수는 길이가 짧은 벡터의 앞의 값들로 다시 연산
x + y

# NA
sum(c(1,2,3,NA))
sum(c(1,2,3,NA), na.rm=T) # NA 처리 

a <- data.frame(x=c(1,3,5), y=c('x', NA, 'z'), z=c('x', 'y', NA))
a
na.omit(a)  # NA 포함 행 제외
na.pass(a)
na.fail(a)  # NA -> error

(a <- matrix(c(1,3,5,7,9,11), ncol=3))
(b <- matrix(c(2,2,2,2,NA,NA), ncol=3))
a
b
a+b
a*b

# 함수
fibo <- function(x) {
  if (x==3 || x==4) {
    return(1)
  }
  return(fibo(x-3) + fibo(x-4))
}

fibo(3)
fibo(7)

f <- function(a,b) {
  print(a)
  print(b)
}

f(3,4)  # 위치 맞춰서
f(b=3, a=4) # 이름 지정해서

a <- function(b, ...) {
  print(b)
  f(...)
}

a(2,3,4)

# 중첩함수
f <- function(a,b) {
  print(a)
  y <- function(b) {
    print(b)
  }
  y(b)
}

f(2,3)

# 스코프
y <- 1
f <- function() {
  x <- 3
  a <- function() {
    x <<- 3 # <<- : 전역변수에 할당
    y <<- 3
    print(x)
    print(y)
  }
  a()
  print(x)
  print(y)
}
f()

y <- 1
f <- function() {
  x <- 2
  a <- function() {
    x <- 3 
    y <- 3
    print(x)
    print(y)
  }
  a()
  print(x)
  print(y)
}
f()

x <- 5; y <- 9; z <- 13 # 전역변수
ft <- function(x) {
  y <- x + 15  # 지역변수
  print(x); print(y); print(z)
  #매개변수 지역변수 전역변수 
}

x
y
ft(x)
ft(10)

# 객체
f <- function(af2) {
  af2$a <- c(1,3,5)
}
af <- data.frame(x=c(5,7,9))
f(af)
af

f <- function(af2) {
  af$x <- c(1,3,5)
}
af <- data.frame(x=c(4,6,8))
af <- f(af) # af의 값을 덮어씀 
af

# 객체의 불변성!  
x <- list()
tracemem(x)
x$b <- c(10,20,30)  # 객체의 값을 바꾸면 새로운 객체가 만들어짐

# 큐
que <- c()
que_size <- 0
enq <- function(num) {
  que <<- c(que,num)
  que_size <<- que_size + 1
}
deq <- function() {
  number <- que[1]
  que <<- que[-1]
  que_size <<- que_size - 1
  return(number)
}
size <- function() {
  return(que_size)
}

enq(1)
enq(3)
enq(5)
print(size())
print(deq())
print(deq())
print(deq())

enq(1)
que <- c(que, 7) # 전역변수 que를 조작 
print(size())
deq()
deq()
size()

q <- function() { 
  que <- c()
  que_size <- 0 # que와 que_size가 함수 안에 있는 지역변수. 외부에서 접근불가
  
  enq <- function(num) {
    que <<- c(que,num)
    que_size <<- que_size + 1
  }
  deq <- function() {
    number <- que[1]
    que <<- que[-1]
    que_size <<- que_size - 1
    return(number)
  }
  size <- function() {
    return(que_size)
  }
  
  return(list(enq = enq, deq = deq, size = size))
}# q 함수를 호출할때마다 지역변수와 que, que_size 새로 생성
# q()를 여러개 만들어도 데이터가 안섞임!
que <- q()
a <- q()
que$enq(3)
a$size()

a$enq(5)
que$deq()

a$deq()

que$size()

a$size()
