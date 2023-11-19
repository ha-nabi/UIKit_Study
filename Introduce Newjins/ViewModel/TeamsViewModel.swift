//
//  TeamsViewModel.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/19/23.
//

import Foundation

class TeamsViewModel {
    
    private var teams: [Team] = [
        Team(id: .minji,
             name: "김민지",
             height: "169cm",
             mbti: "ENTJ", info: "강원도 춘천시에서 태어나 중학교 1학년까지 살았다. 초등학생 시절엔 몇 개월 동안 캐나다 캠프를 갔었고 당시 홈스테이를 했었다. 평소 영어를 공부하는 것을 좋아했어서 연습생이 되기 전에는 외국어고등학교 진학을 준비하기도 했다. 그래서 영어를 잘한다. 실용음악 학원에 기타 수강생으로 다니다가 학원의 추천으로 지원한 쏘스뮤직 내방 오디션에서 TWICE의 SIGNAL을 추고 합격하여 연습생이 되었다. 연습생 생활을 위해 서울에 있는 신사중학교로 전학을 갔는데 당시 학교에 엄청 예쁜 학생이 전학을 왔다고 소문이 나서 난리였다고 한다. 중학교 동창에 의하면 성격도 좋았다고 한다. 2017년 중학교 1학년 때부터 약 4년 동안 쏘스뮤직과 어도어에서 연습생으로 생활하였다. 2019년 9월 빅히트 엔터테인먼트, 쏘스뮤직이 민희진과 합작해 진행한 플러스 글로벌 오디션의 공고 포스터와 홍보 영상1, 영상2에 출연했다. NewJeans 데뷔조에도 가장 먼저 합류했다고 한다.",
             age: 20,
             founded: "2004년 5월 7일"),
        
        Team(id: .hyein,
             name: "이혜인",
             height: "170cm",
             mbti: "INFP",
             info: "2021년 5월달 즈음부터 약 1년 2개월 동안 ADOR의 연습생으로 생활했으며 NewJeans 데뷔조에 가장 마지막으로 합류했다. 소속사 오디션을 보러 갔을 때 너무 떨려서 연습한 것을 제대로 부르지 못했다고 한다. 오디션 당시, BLACKPINK의 Lovesick Girls을 췄다고 한다. 연습생 시절에 고통이 없었던 건 아니지만 연습생 때를 되돌아 본다면 행복한 추억만 존재한다고. 연습생이 된 후부터 학교는 다니지 않았고, 코로나19로 인해 초등학교 졸업은 검정고시를 봐서 합격했다. 유니크하고 무게감 있으면서도 청아한 음색의 소유자로, 어린 나이가 믿기지 않을 만큼 호소력 짙은 보컬과 듣는 사람을 단번에 집중시키는 음색이 장점이다. R&B, 힙합 장르로 대표되는 그룹의 색깔을 매우 잘 살린다. 음정이 상당히 정확하며 뛰어난 음감과 피치를 가졌다. 매 앵콜 무대마다 안정적인 라이브와 성량을 보여주어 좋은 반응을 얻는다. 데뷔 앨범 New Jeans에서 'Hype Boy'를 제외한 나머지 세 곡의 도입부를 맡았다. ",
             age: 16,
             founded: "2008년 04월 21일"),
        
        Team(id: .daniel,
             name: "Danielle June Marsh(다니엘 준 마쉬)",
             height: "165cm",
             mbti: "ENFP",
             info: "성숙하고 청아한 음색이 특징으로, 넓은 보컬 레인지와 톤의 다양성이 큰 장점이다. 차분한 로우톤과 힘 있는 하이톤 모두 잘 사용한다. 중고음역대의 소리가 평소와 같이 밝고 순수한 느낌인 반면 저음은 도도한 인상을 준다. 또 특유의 그루브와 발성적인 포텐셜이 두드러지는 멤버이다. 라이브 실력도 뛰어나다. 'Hurt'에서 화음 담당을 겸했으며 음악방송 1위 앵콜 등에서 음원과 유사할 정도의 안정감을 보여줬다. 엠카운트다운에서 각 팀의 메인보컬들만 참가한 보컬 챌린지에서 하니와 함께 대표로 참가했다. 이 때 하니가 다니엘의 음색이 특이하고 귀에 잘 들어와서 계속 듣고 싶은 목소리라고 표현했다. 본영상 비하인드 ‘Hype boy’ 한소절 부르기에서 뛰어난 라이브 실력을 입증했고 # ‘OMG’ 연습 영상에서도 생라이브로 안정감 있는 라이브를 보여주었다. #Ditto & OMG 레코딩 비하인드 영상에서 몽환적인 음색을 선보였다. 한국어 더빙을 맡은 영화 인어공주의 OST 중 하나인 <저곳으로(Part of Your World)>를 부른 영상이 공개된 후 맑고 순수한 목소리가 16세의 어린 에리얼의 목소리와 굉장히 잘 어울린다는 호평이 많았다. <저곳으로(Part of Your World)>는 인간 세계를 동경하여 인간이 되고 싶은 에리얼의 천진난만하지만 간절한 소망을 드러내는 곡인데 다니엘의 앳되면서 청아한 음색이 이런 점을 잘 살렸다는 좋은 반응들이 많다.",
             age: 19,
             founded: "2005년 04월 11일"),
        
        Team(id: .haerin,
             name: "강해린",
             height: "164.5cm",
             mbti: "INTJ",
             info: "2006년 5월 15일, 2녀 중 첫째로 서울특별시에서 태어나 동작구를 거쳐 경기도 안양시에서 성장했다. 귀인초등학교를 졸업 후 평촌중학교에 입학했으나 연습생 생활로 인해 2020년 중학교 2학년 때 중퇴 후 검정고시를 치렀다. 초등학교 시절 교내 동아리 활동으로 방송부를 했었다고 한다. 동창에 의하면 학교에서 예쁜 걸로 유명했으며, 성격도 정말 착했다고 한다. 또한 연습생이 되기 전부터 학교 앞에서 종종 길거리 캐스팅을 받은 적이 있다고 한다. 그럴 때마다 친구들과 함께 연예인이 된 이후의 일을 고민했었다고 한다. 연습생이 되기 전, 2018년에 원러브댄스스튜디오 평촌점을 다녔다. 2020년 초반 하이브 오디션에 합격하며 중학교 2학년 때부터 약 2년 반 동안 쏘스뮤직과 ADOR의 연습생으로 생활했다. 처연하고 애틋한 감성이 도드라지는 특유의 가녀린 옥구슬 같은 음색이 매력적이다. 약간 허스키하고 보이시한 음색도 선보일 때가 있는데, 이런 정반대의 음색들도 매력적으로 소화한다. 댄스곡에서는 다소 시크하면서도 환기력이 강한 음색을 보여준다. 'Hype Boy'에서 후렴 파트를 맡아 강한 환기력을 잘 살렸으며, 'OMG'에서는 시크한 음색을 극대화하여 킬링파트를 만들어내고 있다. 데뷔 앨범의 트리플 타이틀에서 모두 후렴파트를 맡았다.",
             age: 18,
             founded: "2006년 05월 15일"),
        
        Team(id: .honey,
             name: "Hanni Pham(하니 팜)",
             height: "161.7cm",
             mbti: "INFP",
             info: "호주 멜버른에서 태어나고 쭉 자랐다. 부모님은 모두 베트남인이며 아버지는 하노이 출신이고 어머니는 호찌민시 출신이다. 부모님과는 베트남어로 대화했고 어릴 때 부모의 고향인 베트남을 여행한 경험이 있다. 여동생과 함께 베트남 전통 의상인 아오자이를 입고 찍은 사진도 있다. 현재도 조부모님을 포함한 가족들은 호주에서 정착하여 살고 있다. 딕션, 성량, 음색, 음역대, 가사 전달력, 라이브 안정성 등 여러 방면에서 기본기가 매우 탄탄하다. 고른 발성과 함께 부드러우면서도 탄탄한 느낌을 주는 맑고 청량한 음색이 특징으로, 팬들은 '자체 오토튠을 건 듯하다'라는 표현을 종종 사용한다. 중고음역대에서 강점을 보이며, 외국인 멤버임에도 불구하고 자연스러운 한국어 발음이 매력 포인트다. 영어도, 한국어도 약간 흘리는 듯한 발음이 신선하고 매력적이라는 반응이 많다.  잘 녹아드는 목소리로 곡을 소화해내는 능력이 뛰어나 후렴 파트를 주로 맡는 편이다. 'Attention' 후렴 구간에서 R&B의 꺾기 기교가 가미된 백보컬 파트를 맡았는데 이를 즉석에서 라이브로 부른 것이 화제가 되었다. 김범수는 하니의 애드리브를 감상하고 노래 실력에 대해 극찬했다. 라이브 실력도 뛰어나다. Ditto, OMG 등 1위 앵콜 라이브에서 음원과 다를 바 없는 안정적인 라이브로 많은 주목을 받았다. 90도 인사에도 끄떡없는 하니 Ditto 라이브 각 팀의 메인보컬이 참여한 엠카운트다운 다시 만난 세계 챌린지에서 고음을 선보인 것이 화제가 되었다. 현재까지 보여준 진성 최고음은 해당 영상의 3옥타브 레(D5)다.",
             age: 20,
             founded: "2004년 10월 06일")
    ]
}