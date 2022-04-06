# TipPlace

## 공통 repo 만들고 각자 브랜치 만들기

 - 브랜치 만드는 기준은 본인이 맡은 화면 기준<br/>
 - 스크린샷 옆에 검정 포스트잍 참조<br/>
 - Organization : repo 는 본인계정 / orga 는 하나의 계정 회사계정처럼 (추후 결정 __ 취소됨)<br/>


## Convention 맞추기

 - 주석 쓰는 법


 - 커밋 하는 법 (커밋 메세지 어떻게 쓸지, 언제 커밋 할지, 라벨 어떻게 붙일지, 이슈 이름 쓰는 법 등등)


 - Git Flow : 목적을 가진 브랜치를 만들어서 그게 완료되면 파괴
> (main - release - dev - feature)  
> (참고 : https://techblog.woowahan.com/2553/)
 
 - 탭 바 변수명


 - 함수명은 동사로 (이거는 중간점검때 맞춰봐도 될 듯합니다. 코드리뷰중에)


 - 브랜치 명
    - 본인이 맡은 화면 이름으로
    - Simon : CategoryView, MyPageView
    - Lia : MainBoardView
    - Snoopy : DetailPostView
    - Dophi : PostUploadView
    - Noah : CategoryBoardView
    - Maeve : Design


```swift
main (default)
    |
    |--> MyPageView
    |      |
    |      |--> feature...
    |
    |--> CategoryBoardView
    |      |
    |      |--> feature...
    |
    |--> MainBoardView
    |      |
    |      |--> feature...
    |
    |--> PostUploadView
    |      |
    |      |--> feature...
    |
    |--> DetailPostView
    |      |
    |      |--> feature...
    |
    |--> Design
    |      |
    |      |--> feature...
```



## 일정정리
20220405
- 탭바 구현해서 메인 브랜치에 push (~pm. 5)__다 하고 리버에 chat 남기기
- 그 후 각자 브랜치 생성

20220406


20220407
