# 4차산업혁명 선도인재 양성 프로젝트 과정

---
## 1. Week 1 Day 9:

***

1. route
   1. resources :posts
2. controller(만들 때 꼭 복수형으로!!!!)
   1. rails g controller posts index new create show edit update destroy
      1. -> routes파일에 찌꺼기 지우기
3. model
   1. rails g model post image_url story
4. 조건
   1. 모든 form -> form_tag로 만든다.
   2. 모든 link -> link_to(url은 전부 prefix를 사용한다.)
      1. 참고 : rake routes
      2. resources :posts
      3. new_post_path
      4. prefix_path 사용 3번처럼 "post/new"로 하는게 아니라 new_post_path로

    phone_book = Hash.new.  #또는  = {}라고 해줘도 됨
    phone_book[:john] = "01012345678"
    phone_book["john"] #결과는 nil
    phone_book[:tak] = {home_phone: "0212341234", mobile_phone: "01011111111"}
    phone_book[:tak][:mobile_phone]

- params에 배열과 해시도 저장 가능하다.


#### 퍼펙트 루비 온 레일즈

p.116

form_tag & form_for

p.354

params hash

p.436

RESTful 정의 & 라우팅



Vagrant 1.9.5

Virtual Box 5.1.30



### telegram

gem install rest-client

require 'rest-client'

require 'json'



telegram 통해서

https://desktop.telegram.org/



/start

/newbot rickkim90

rickkim90

rickkim90_bot



token = ""

me = RestClient.get("https://api.telegram.org/bot#{token}/getMe")

talk = RestClient.get("https://api.telegram.org/bot#{token}/getUpdates")

puts me

puts talk



1. windows에서 폴더하나를 만든다
2. 폴더에 들어가서 vagrant init ubuntu/xenial64
   + vagrantfile 생성
   + post, host 3000
3. vagrant up
4. vagrant ssh 가상머신 접속
5. 가상머신 접속 상태에서 cd /vagrant
   + 공유 폴더로 접속 가능
6. 기본 프로그램 설치
   + gorails.com -> guides -> setup ruby on rails
   + ruby : 2.3.5
   + rails : 4.2.9
   + rails new board
   + rails new [프로젝트 이름] --skip-bundle



atom -> ctrl + p (찾기)

rails s -b 0.0.0.0 (binding)

접속 -> localhost:3000



1. controller : blogs

- index new create show edit update destroy

2. model : blog

- string, title
- string, contrent
- string, image_url

3. routing : resources :blogs
