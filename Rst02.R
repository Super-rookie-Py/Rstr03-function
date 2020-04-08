### Data structure 1 2020/4/8 by Keonwoo Park
### Basic

a = 1:100
a

b<- sample(a, 5)
b
# 1부터 100까지 무작위로 뽑음(섞은거랑 같다)
#  표본추출

sample(5)
sample(a, 5)

# replace 값을 넣으면 복원추출을 한다.(기본값은 비복원-False)
sample(1:5, 5, replace =TRUE)

sample(1:6, 100, replace = TRUE)

data_3 <- c('a', 'a', 'b', 'c', 'd')

sample(data_3, 3)

# 복원 추출은 원소의 개수 초과의 개수를 못뽑음
sample(data_3, 10)
sample(data_3,10, replace=1)

data_3 <- sample(1:100, 100)

temp_data_1 = c(1, 2, 5)
# 전체값을 반복하는 것
rep(temp_data_1, time = 2)
# 각각 반복 each
rep(temp_data_1, each = 3)
data_4 <- rep(temp_data_1, time = 2, each = 3)
data_4

sort(data_3)
data_4
sort(data_4)

LETTERS
letters
letters[5]
month.abb
pi
month.name
# 무한대 값
Inf
-Inf
1 / 0
# 비어있는값
NULL
a<-NULL
a
# NA 해당사항 없음
a <- matrix(1: 12, nrow = 3)
a <- matrix(nrow=3, ncol= 4)
a[1,1]=2
a[1,2]=3
a
mean(a)
mean(a, na.rm=T)
# NaN Not a number
Inf
#부정 (정할 수 없다)
c(1/0 , -1/0)

# 불능 (가능하지 못함)
0/0
is.infinite(Inf)

data_5 <- data.frame(First_name = c("David","Sejoon","A"),
                     Last_name = c("Kim", "Park", "Lee"))
data_5
data_6 <- data.frame(Cell_Phone=c(01033335555,01022224444,01077772233))
data_6
# 두 데이터 프레임을 묶으려면cbind (열추가)
data_7 <- cbind(data_5, data_6)
data_7
data_8 <- data.frame(First_name = "B",Last_name="Ha", Cell_Phone = 01011212211)
# 밑으로 추가할떈 행을늘릴때 rbind
rbind(data_7, data_8)

### function

# 함수 지정 
# 디폴트값을 지정 할 수 있다.

Add<-function(x,y=0){
  z=x+y
  #출력값
  return(z)
}
Add(10, 20)
temp_value <- Add(10, 20)
temp_value
Add(40)

a1 = 1
a2 = 2

f_if <- function(a1, a2){
  if (a1 == a2){
    print("a1 == a2")
  }else{
    if(a1>a2){
      print("a1 > a2")
    }else{
        print("a1 < a2")
      }
  }
}
f_if(20, 10)f_if <- function(a1, a2){
  if (a1 == a2){
    print("a1 == a2")
  }else if(a1>a2){
    print("a1 > a2")
  }else{
    print("a1 < a2")
    }
  }
}

if(10==20){print(20)}else{print(10)}
if(10!=20){print(20)}else{print(10)}

a = T
if(a){print("TRUE!!")}else{print("FALSE")}
a = F
if(a){print("TRUE!!")}else{print("FALSE")}
a = 0
if(a){print("TRUE!!")}else{print("FALSE")}
a = 1
if(a){print("TRUE!!")}else{print("FALSE")}
a = -1
if(a){print("TRUE!!")}else{print("FALSE")}
# 0 이외의 어떤 수던지 TRUE

a=(10==20)&(30>20)
a
if(a){print("TRUE!!")}else{print("FALSE")}

b = 1:10
10 %% 2
9 %% 2
9 %/% 2
b %% 2
a = b%% 2
a
if(a){print("TRUE!!")}else{print("FALSE")}

### %in% & which

b
c = ifelse(b %% 2, 'even', 'odd')
c

# 뒤에 벡터값이 존재하면 TRUE
a = 1:10
b = a %in% c(1, 3, 5)

b=sample(a, 10)
b
b[b==10]
# b값의 위치를 알려준다!
which(b==7)
b[which(b==10)]
b
b%%2

#홀수가 있는 자리 수 which
which((b %% 2) %in% 1)
# 짝수가 있는 자리 수
which((b %% 2) %in% 0)
(b %% 2) %in% 0

which(b>3)
b
