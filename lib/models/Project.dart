class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demo_projects = [
  Project(
    title: "360 place app",
    description:
        "플러터는 ‘내가 생각한 것을 빠르게 만들어 볼 수 있는 기술’ 이라고 생각합니다. 이 생각에 맞게 문득 생각난 아이디어를 기반으로 만들어 보았고, 계속 진행 중인 프로젝트입니다. 360도 파노라마 뷰어를 이용하여 장소를 360도로 체험할 수 있게 해주고,그 안에 코인 요소를 랜덤 위치에 숨겨두어 후에 활용할 수 있는 시스템이 생각나서 만들어 보았습니다. 체계적이진 못하지만 무언가를 기획하고 실현해 본다는 것이 얼마나 재밌는지를 느끼고 있습니다. 단점이 있다면, 뷰어가 패키지를 가져다 쓴다는 점이 제일 큰 문제이고, 360도 사진을 제대로 찍기 힘들다는 게 단점입니다. 현재 최선은 구글 스트리트 뷰로 360도 사진을 제작하여 데이터를 모으는 것입니다. 의존성이 큰 앱이 되겠지만 일단 만들어 보는 게 목표입니다. 지속적으로 업데이트할 예정입니다. 최우선 업데이트 목표는 Firebase를 연동하여 auth와 db를 이용하는 것입니다.",
  ),
  Project(
    title: "carrot market app UI",
    description:
        "당근 마켓의 UI를 한 땀 한 땀 제작했습니다. 이를 통해 플러터 UI를 다루는 능력과 데이터 클래스를 생성하는 능력을 키웠습니다.",
  ),
  Project(
    title: "tiktok app",
    description:
        "플러터로 틱톡을 클론 코딩해보며 틱톡의 주요 기능들을 Firebase와 연동하여 만들었고, 이를 통해 플러터와 Firebase의 숙련도를 높였습니다. 백엔드로 Firebase를 사용하는 것이 얼마나 강력하고 활용성이 좋은지를 느꼈습니다. 방대한 분량에 조금 어려웠지만 한번 해보는 것의 중요성을 다시 한번 깨달았고, 많은 것을 배웠습니다. 좀 더 익숙해진다면 강력한 무기로 사용할 수 있을 것이라고 느꼈습니다. 기억에 남는 상황은 팔로우 기능을 담당하는 함수는 제대로 작동하고 파이어베이스에도 제대로 등록되고 있으나, 프로필 스크린에 진입할 시 팔로잉 유무가 계속 false로 고정되어 프로필 스크린에 Follow만 렌더링 되는 상황이었습니다. 하여, print로 데이터가 넘어오는 순서를 파악했고, 확인해본 결과 파이어베이스 데이터를 가져와 팔로잉 유무를 분기해 주는 부분에 await을 쓰지 않아 초깃값인 false로 고정되어 있는 상태에서 나머지 함수들이 먼저 실행되고, 후에 데이터를 가져와 제대로 반영되지 않았던 것을 알아내고 수정하였습니다.",
  ),
  Project(
    title: "responsive web portfolio site.",
    description:
        '플러터를 이용한 반응형 웹입니다.크로스 플랫폼이라는 이름에 걸맞게 웹도 제작해 보게 되었습니다. 플러터 웹을 경험한 뒤 느낀 점을 적어보겠습니다. 장점, 플러터가 제공하는 위젯들로 UI를 직관적이고, 빠르고, 이쁘게 그려나갈 수 있었습니다. 단점, 웹에서만 한글을 사용하면 초기 렌더링 시 글자가 이상한 문자로 표기되었다가 한글로 바뀝니다. 구글링을 열심히 해봐도 아직 제대로 한글 지원이 안됐다는 정보만 찾았습니다. 이는 UI/UX 부분에서 큰 문제라고 생각합니다. 한글을 사용하여 포트폴리오 사이트를 만들려는 계획이었지만 멈칫하게 되는 계기가 되었습니다. 또한 제가 못찾은 것일 수도 있겠지만 HTML 에서의 a 태그와 같은 기본 링크 기능도 따로 패키지를 이용해야 했습니다. 플러터의 웹, 안드로이드, ios로 빌드 되는 크로스 플랫폼과, 기본적으로 뛰어난 디자인, 애니메이션은 맘에 드나 플러터 웹 한글 초기 렌더링 문제와 뛰어난 웹 프론트엔드 기술들, 웹 접근성도 생각해 보면 웹은 아직이라고 생각합니다. 플러터를 꾸준히 배울 저에게 플러터 웹이 빠르게 성장했으면 좋겠다고 느꼈고, 반대 방향으로 웹 기술에도 크게 관심이 있는 저는 웹 프론트엔드 기술도 앱 영역에서 플러터만큼 빠르도록 성장했으면 좋겠다고 생각합니다.',
  ),
];
