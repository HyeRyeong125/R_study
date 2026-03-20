install.packages("installr")
library(installr)
updateR()

print(100)
100

print("100")
print('100')
"100"
'100'

print(100+100)

d1 = 100
class(d1)

d1 = '100'
class(d1)

print(1)

print(1, 2)

cat(1, ':', 'a', '\n',2, ":", 'b')

# 1. 숫자형
a = 120

a <- 130

# : -> 1~20까지의 범위를 표현함
# [ ] -> index값 표현
a = 1:20
a
a[1]  #1번 인덱스값
a[12] #2번 인덱스값

a = 3 + (4*5)
a

1+2; 2*3; 4/5

#산술연산자
# +, -, *, (**, ^)->제곱
2**3
2^3

#나누기
# / : 나누기 결과를 실수값으로 표현
# %/% : 몫을 구함 
# %% : 나머지 구함

5/2
5%/%2
5%%2

10000
100000
1e2
3e3
3e-2

'1' + '2'

#강제형변환 : as.~()
as.numeric(d1) + as.numeric('2')

# 2.문자형('~')

first = 'a'
class(first)

# 3.진리값 : True / False --> R에서는 0을 제외한 모든 숫자가 참
# & : AND연산 (모두가 참인 경우에 참)
# | : OR연산 (하나라도 참이면 참)
# ! : NOT연산 (반전)

3&0
3&-2
0.3&-2
3|0
!0

# 4. NA/NULL
# NA : 잘못된 값이 들어 올 경우(Not Applicable, Not Available)
# NULL : 값이 없는 경우

cat(1, NA, 2) # 결측치는 결과에 포함이 됨
cat(1, NULL, 2) #빈 값은 결과에 포함이 안됨

sum(1, NA, 2)
sum(1, NULL, 2)

# 5. factor형 : 여러번 중복되어 나오는 데이터들을 각 값으로 모아서 대표값을 출력
# csv : 데이터 또는 컬럼을 구분하는 구분자를 ,로 해놓은 파일
setwd("/Users/park/r_data/r_data")
getwd()
Sys.setlocale("LC_ALL", "ko_KR.UTF-8") #맥용 명령어
t1 <- read.csv("factor_test.txt", fileEncoding = "CP949") #맥용 명령어
t1

class(t1)
str(t1)

f1 = factor(t1$blood)
f1

summary(f1)

#문제)성별을 요약하시오.
t1
s1 = factor(t1$sex)
summary(s1)

# 6. 날짜와 시간
# 6-1. Bass 패키지로 날자 시간 제어
Sys.Date()
Sys.time()
date()

"2026-03-20"
class("2026-03-20")

#문제) "2023-03-10"의 문자데이터를 날짜 데이터로 바꾸고 타입을 확인하시오.
class(as.Date("2026-03-20"))

as.Date("03-20-2026") #오류 발생
# 날짜형태 지정
# %d : 일
# %m : 월
# %Y : 년(4자리)
# %y : 년(2자리)
as.Date("03-20-2026", format = "%m-%d-%Y") #format(날짜 형식)설정
as.Date("032026", "%m%d%y")

# 문제) 다음 데이터를 날짜형으로 변환하여라.
# 2026년 3월 20일
as.Date("2026년 3월 20일", format ="%Y년 %m월 %d일")

as.Date(100, "2026-03-20")
as.Date(-100,"2026-03-20")
as.Date("2026-03-20")+100

# 6-2. lubridate 패키지 사용
install.packages("lubridate")
library(lubridate)

d = now()
year(d)
month(d)
day(d)
wday(d, label = T) #label을 True로 하여서 6이 무슨 요일을 나타내는지 확인!
#일요일부터 시작함. + R은 label이 0이 아닌 1부터 시작함. ex) 1=일요일

d - days(2)
d + days(2)
d + years(2)

# 문제) 현재 날짜와 시간에 1년 2개월 3일 4시간 5분 6초를 더해라
d + years(1) + months(2) + days(3) + hours(4) + minutes(5) + seconds(6)

# seq()
seq(as.Date("2026-01-01"), as.Date("2026-12-31"), 1)
seq(as.Date("2026-01-01"), as.Date("2026-12-31"), 'day')
seq(as.Date("2026-01-01"), as.Date("2026-12-31"), 'month')
d=seq(as.Date("2026-01-01"), as.Date("2126-12-31"), 'year')

d[45]
d[35:45]
d[c(35, 45)] # c = combine(1개 이상의 데이터를 결합)

#변수
v1 = 'aaa' #scalar 1개의 함수에 1개의 값 할당
v1

v1 = 1:10
v1

v1 = 'a', 'b', 'c' 
v1 = c('a', 'b', 'c') #vector 1개의 함수에 1차원 배열 형태로 여러 값이 들어감(index값 가짐)

v1[1]
v1[2]
v1[3]
class(v1)

v1 = c(1,2,3,4,5)
class(v1)

v2 = c('a', 'b', 'c')
v2
class(v2)

v3 = c(1,2,3,4,'5'). #문자와 숫자 혼용시, 모두 다 문자로 바뀜
v3
class(v3)

# 변수 설정 시 유의 사항
# 1. 대소문자 구분
# 2. 영어, 숫자, 한글 모두 사용 가능하지만 시작은 반드시 문자
변수 = 1
변수

# 3. 예약어는 사용 못한다
# if, else, ifelse, for, while, break, TRUE, NA, in, seq 등

n1 = '1'
n2 = 2
n1 + n2

as.numeric(n1) + n2
