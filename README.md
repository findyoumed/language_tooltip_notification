# language_tooltip_notification
한영전환시 표시. language_notification_tooltip
한글, 영문 전환시에 tooltip으로 사용하는 언어를 보여줌.
autohotkey ver2.0 사용

한영전환에 관한 프로그램을 개발하기가 어려웠던 이유.

1. 윈도우10과 윈도우11은 언어 입력이 다르다는 것을 알아야 한다.
윈도우 22H2 업그레이드 이후에는, Microsoft IME가 새로운 버전으로 업그레이드 되었고,
기존 IME 코딩언어도 새로운 버전으로 코딩해줘야 한다.
IME가 새로운 버전인지 모르고 계속 코딩했으니, 올바로 동작을 안했다.
IME관련된 새로운 버전 코딩언어를 새로 배워야만(찾아야만) 한다.

2. 윈도우11의 메모장은 Microsoft IME와 또 다른 한글 입력 방식이다.
코딩된 실행파일을 메모장에서 테스트 하는 것과, 다른 응용프로그램에서 테스트 하는 결과가 다르다.

3. timer를 이용하여, 한글/영어 상태를 계속 체크하는 것은 낭비이므로, 개발하고 싶지 않은 방식이었다.

4. 스크립트실행하여 언어상태 인식한 후 10ms delay를 줘야, 인식이 잘되는데, 그냥 코드를 짜면 동작이 안하는 이유를 알 수 없다.

1,2, 4번 모두 프로그램 동작 외부로 사람이 보기에는 알 수가 없는 경우이므로, 
누군가 비슷한 고민을 하는 프로그래머의 블로그를 찾은 후에야 해결할 수 있었다.
