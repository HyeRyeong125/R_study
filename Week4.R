#데이터 처리 객체
# - 동일 데이터 타입
# 1. 스칼라 : 단일 데이터 처리
# 2. 벡터 : 1차원 배열(스칼라를 여러개 합친 것)
# 3. matrix : 2차원 배열(벡터를 여러개 합친 것)
# 4. array : 3차원 배열(matrix를 여러개 쌓아 올린 것)
 
# - 다른 데이터 타입
# 1. list : 벡터와 비슷((키, 값), 형태)
# 2. dataframe : 엑셀의 표나 DB의 테이블과 같음(DB의 컬럼처럼 라벨이 있음)

# 벡터 : 1차원 배열
# 1. c()함수로 작성(combine 함수)
# 2. index는 다른 프로그래밍 언어와 다르게 1부터 시작
# 3. 하나의 자료형만 사용
# 4.결측값은 'NA' 사용
# 5. NULL은 어떤 형식도 취하지 않는 특별한 개체

c(1,2,3,4,5)
c(1,2,'3',4,5). #정수와 문자 혼용시 전체 다 문자로 저장
v1 = c(1,2,3,4,5)
v1
v1[1]
v1[0]
v1[-3] # -n을 넣을 시, n번 인덱스 값이 제외된 채로 출력

length(v1) # v1의 길이 출력

# 문제) v1의 첫번째 인덱스에서부터 끝에서 세번째 인덱스까지의 값을 출력하시오. 
# 단, length()를 이용할 것.

v1[1:3]
v1[-1:-3]
v1[2:4]
v1[2]
v1[2]=6
v1
v1[9]

v1 = c(v1,7)
v1
v1[9]=9
v1

v1 = append(v1, 10, after=3)
v1
append(v1, c(11,12), after=4)
append(v1, 12, after=0)

# 벡터 연산
c(1,2,3) + c(4,5,6)

v1 = c(1,2,3)
v2 = c(4,5,6)
v1+ v2

union(v1, v2) # 합집합

v3 = c(1,2,3,4,5) # 두 벡터의 길이가 다른 경우 순환 원리가 적용
v1+v3

v1 = c(1,2,3)
v2 = c(3,4,5)
v1-v2

setdiff(v1,v2) # 차집합
intersect(v1,v2) # 교집합

# 벡터의 각 컬럼에 이름 지정
f = c(10,20,30)
f

names(f) = c('apple', 'banana', 'peach')
f

# 벡터에 연속적인 데이터 할당 : seq(), rep()

v4 = c(1:5)
v4

v5 = seq(1, 5)
v5

v6 = seq(-2, 2)
v6

c6 = c(-2:2)
c6

v7 = seq(1, 10, 2) # 1~10까지 2씩 증가
v7

v8 = rep(1:10, 2) #1~10까지 2번 반복
v8

v9 = rep(1:10, each=2) #1~10까지 각각 2번 반복
v9

#벡터의 길이
v1
length(v1)
NROW(v1) #행의 개수

#벡터의 특정 문자 포함 여부
v7
3 %in% v7 #v7 안에 3이 있는가?
4 %in% v7 #v7 안에 4가 있는가?

# matrix
# 1. 벡터를 여러개 합친 형태 : 행렬
# 2. 모든 컬럼과 행은 동일한 타입
# 3. 기본적으로 열로 생성
# 4. 다른 데이터 타입의 데이터를 저장할 경우 데이터프레임 사용
m1 = matrix(c(1,2,3,4))
m1
NROW(m1)

m2 = matrix(c(1,2,3,4), nrow = 2) #nrow를 사용하여 열 개수를 추가, 행 우선 법칙 적용
m2

m3 = matrix(c(1,2,3,4), nrow = 2, byrow = T)
m3

m4 = matrix(c(1,2,3,4), 2, by = T)
m4
m4[1,1]
m4[2,1]
m4[,1]
m4[1,]

m4 = matrix(c(1,2,3,
              4,5,6,
              7,8,9), 3, by = T)
m4

# 새로운 행과 열 추가 : rbind() -> 행 추가, cbind() -> 열 추가
m4

m4 = rbind(m4, c(11,12,13))
m4

m4 = cbind(m4, c(20,21,22)) #벡터의 길이가 원래 길이보다 작으면 순환원리 적용
m4

m4 = rbind(m4, c(15,16,17, 18, 19)) #추가하고자 하는 데이터의 갯수가 많으면 절삭
m4

# 행, 열 이름 지정
rownames(m4) = c(1,2,3,4,5) # 행 이름 지정
m4

colnames(m4) = c('1st', '2nd', '3rd','4th') # 열 이름 지정
m4

# matrix 사용
m1 = matrix(1:20, 4, by=T)
m1

dimnames(m1) = list(c(1,2,3,4), c('a', 'b', 'c', 'd','e')) #행, 열 이름 적용
m1

# 색인
m1[2:3] 
m1[-3,]

# 행렬조건
m1 >= 10 #true/false값으로 나옴

# 10이상인 원소 출력
m1[m1>=10] #인덱스를 사용하여 수식에 해당하는 값 출력

# m1의 c열의 값이 10 이상인 행 출력
m1[m1[, 'c']>=10,]


# m1의 e값이 20인 행의 3~5번째의 컬럼 출력
m1[m1[,'e']==20, 3:5]

# matrix 문제

no = c(1,2,3,4)
name = c('apple', 'banana', 'peach', 'berry')
price = c(500, 200, 200, 50)
qty = c(5,2,7,9)

m1 = cbind(no, name, price, qty)
m1

# 1. peach 가격 출력
m1[m1[,'name']=='peach', 'price']

# 2. apple과 peach의 데이터만 출력
m1[m1[,'name']=='apple'| m1[,'name']=='peach',]

# 3. sales라는 컬럼 생성(단, sales는 price*qty)
sales = as.numeric(m1[,'price'])*as.numeric(m1[,'qty'])
sales
cbind(m1, sales)

# 4. 첫번째 컬럼제거 후 각 행번호 설정
rownames(m1) = m1[,1]
m1
m1 = m1[,-1]
m1

# 5. qty가 5 이상인 과일 이름 출력
m1[m1[,'qty']>=5,'name'] 
#matrix를 벡터로 구성한 후 비교연산으로 원소 추출 시, 1차원 벡터로 리턴(행렬구조를 잃어버림)

# 6. 5번째 과일 추가(mango, 100원, 10개)
v1 = c('mango', 100, 10)
m1 = rbind(m1, v1)
m1
rownames(m1)[5]=5
m1

# array : 3차원 배열(행, 렬, 높이)
# matrix를 쌓아 놓은 형태

a1 = array(c(1:12), dim=c(3,4))
a1

a2 = array(c(1:12), dim=c(2,2,3)) #dim으로 2행 2열 3층짜리 구조 만듦
a2

a2[1,1,3]

a3 = array(c(1:12), dim=c(2,2,3))
a4 = aperm(a3, dim=c(2,1,3))
a4

