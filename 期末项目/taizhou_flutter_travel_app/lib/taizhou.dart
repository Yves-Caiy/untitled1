import 'package:flutter/material.dart';

void main() {
  runApp(const TaizhouApp());
}

class TaizhouApp extends StatelessWidget {
  const TaizhouApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taizhou Travel',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF5FBFC),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchText = "";
  bool isKorean = false;

  final List<Map<String, dynamic>> attractions = [
    {
      "title": "神仙居",
      "kTitle": "신선거",

      "subtitle": "国家5A级景区",
      "kSubtitle": "국가 5A 관광지",

      "desc": "奇峰云海与悬崖栈道闻名全国",
      "kDesc": "구름바다와 절벽 잔도로 유명한 관광지",

      "detail":
      "神仙居拥有壮观云海、玻璃栈道、瀑布群与山峰景观，是浙江最热门自然景区之一。",

      "kDetail":
      "신선거는 운해, 유리잔도, 폭포와 산악 풍경으로 유명한 절강성 대표 자연 관광지입니다。",

      "image":
      "https://images.unsplash.com/photo-1506744038136-46273834b3fb",

      "rating": "4.9",
    },

    {
      "title": "台州府城",
      "kTitle": "타이저우 옛성",

      "subtitle": "千年历史文化古城",
      "kSubtitle": "천년 역사 문화 도시",

      "desc": "古城墙与历史街区保存完整",
      "kDesc": "옛 성벽과 역사 거리가 잘 보존됨",

      "detail":
      "台州府城融合江南文化与古建筑风格，是体验传统文化的重要地点。",

      "kDetail":
      "타이저우 옛성은 강남 문화와 전통 건축 양식이 어우러진 역사 문화 관광지입니다。",

      "image":
      "https://images.unsplash.com/photo-1493246507139-91e8fad9978e",

      "rating": "4.8",
    },

    {
      "title": "长屿硐天",
      "kTitle": "창위동천",

      "subtitle": "世界级地质奇观",
      "kSubtitle": "세계적인 지질 경관",

      "desc": "千年人工石窟地下宫殿",
      "kDesc": "천년 인공 석굴 관광지",

      "detail":
      "长屿硐天拥有巨大石窟群与独特地下空间，是世界著名地质奇观。",

      "kDetail":
      "창위동천은 거대한 석굴과 독특한 지하 공간으로 유명한 관광 명소입니다。",

      "image":
      "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",

      "rating": "4.7",
    },

    {
      "title": "路桥十里长街",
      "kTitle": "루차오 십리장가",

      "subtitle": "江南古街文化",
      "kSubtitle": "강남 전통 거리",

      "desc": "保留完整的明清水乡商业街",
      "kDesc": "명청 시대 거리 풍경 보존",

      "detail":
      "路桥十里长街拥有古桥、古街与传统商铺，是台州历史文化的重要代表。",

      "kDetail":
      "루차오 십리장가는 전통 거리와 고풍스러운 건축으로 유명합니다。",

      "image":
      "https://images.unsplash.com/photo-1514565131-fce0801e5785",

      "rating": "4.8",
    },

    {
      "title": "椒江老街",
      "kTitle": "자오장 옛거리",

      "subtitle": "城市记忆街区",
      "kSubtitle": "도시 문화 거리",

      "desc": "融合现代与传统文化",
      "kDesc": "현대와 전통 문화 융합",

      "detail":
      "椒江老街拥有大量传统建筑、小吃与夜景，是体验台州烟火气的重要地点。",

      "kDetail":
      "자오장 옛거리는 전통 음식과 야경으로 유명한 거리입니다。",

      "image":
      "https://images.unsplash.com/photo-1501594907352-04cda38ebc29",

      "rating": "4.7",
    },

    {
      "title": "温岭千年曙光园",
      "kTitle": "원링 천년서광원",

      "subtitle": "新千年第一缕阳光",
      "kSubtitle": "천년 첫 일출 명소",

      "desc": "滨海日出观景圣地",
      "kDesc": "바다 일출 관광 명소",

      "detail":
      "温岭石塘千年曙光园以壮丽海上日出闻名，是全国著名海边景点。",

      "kDetail":
      "원링 천년서광원은 아름다운 바다 일출로 유명한 관광지입니다。",

      "image":
      "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",

      "rating": "4.9",
    },
  ];

  final List<Map<String, dynamic>> foods = [
    {
      "name": "嵌糕",
      "kName": "첸가오",

      "desc": "台州超人气传统小吃",
      "kDesc": "타이저우 인기 전통 음식",

      "detail":
      "嵌糕夹入土豆丝、肉末、鸡蛋等丰富配料，是台州街头代表性美食。",

      "kDetail":
      "감자채, 고기, 계란 등을 넣은 타이저우 대표 길거리 음식입니다。",

      "image":
      "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
    },

    {
      "name": "姜汤面",
      "kName": "생강국수",

      "desc": "台州传统特色早餐",
      "kDesc": "타이저우 전통 아침 음식",

      "detail":
      "姜汤面是台州经典早餐，以姜汤搭配面条，暖胃又具有地方特色。",

      "kDetail":
      "생강국수는 따뜻한 생강 국물과 면으로 만든 전통 음식입니다。",

      "image":
      "https://images.unsplash.com/photo-1515003197210-e0cd71810b5f",
    },

    {
      "name": "海鲜砂锅",
      "kName": "해물 뚝배기",

      "desc": "沿海特色海鲜料理",
      "kDesc": "해안 지역 대표 해산물 요리",

      "detail":
      "海鲜砂锅融合虾、蟹、贝类等多种海鲜，是台州沿海饮食代表。",

      "kDetail":
      "새우, 게, 조개 등을 넣은 타이저우 대표 해산물 요리입니다。",

      "image":
      "https://images.unsplash.com/photo-1559847844-5315695dadae",
    },

    {
      "name": "食饼筒",
      "kName": "전통 롤전병",

      "desc": "台州特色卷饼",
      "kDesc": "타이저우 전통 롤 음식",

      "detail":
      "食饼筒类似春卷，但内部馅料更加丰富，是传统节日美食。",

      "kDetail":
      "춘권과 비슷하지만 속재료가 더욱 풍부한 전통 음식입니다。",

      "image":
      "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredAttractions = attractions.where((item) {
      return (isKorean
          ? item["kTitle"]
          : item["title"])
          .toString()
          .toLowerCase()
          .contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.4),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 120, 24, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "TAIZHOU",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          isKorean
                              ? "산과 바다의 도시 탐험"
                              : "探索山海之城",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          isKorean
                              ? "산, 바다 그리고 문화를 탐험하세요."
                              : "Discover mountains, ocean and culture.",
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isKorean = false;
                          });
                        },
                        child: const Text("中文"),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isKorean = true;
                          });
                        },
                        child: const Text("한국어"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      hintText:
                      isKorean ? "관광지 검색..." : "搜索景点...",
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchText = value;
                      });
                    },
                  ),

                  const SizedBox(height: 25),

                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange.shade300,
                          Colors.deepOrange.shade400,
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              isKorean ? "오늘 날씨" : "今日天气",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              isKorean
                                  ? "타이저우 · 맑음"
                                  : "台州 · 晴天",
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "28°C",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.wb_sunny,
                          size: 90,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  Text(
                    isKorean ? "인기 관광지" : "热门景点",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  ...filteredAttractions.map((item) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color:
                            Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                            const BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                            child: Image.network(
                              item["image"],
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        isKorean
                                            ? item["kTitle"]
                                            : item["title"],
                                        style:
                                        const TextStyle(
                                          fontSize: 26,
                                          fontWeight:
                                          FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color:
                                          Colors.orange,
                                        ),
                                        Text(item["rating"]),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  isKorean
                                      ? item["kSubtitle"]
                                      : item["subtitle"],
                                  style: TextStyle(
                                    color:
                                    Colors.grey.shade700,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  isKorean
                                      ? item["kDesc"]
                                      : item["desc"],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    height: 1.6,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),

                  const SizedBox(height: 35),

                  Text(
                    isKorean ? "대표 음식" : "特色美食",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foods.length,
                      itemBuilder: (context, index) {
                        final food = foods[index];

                        return Container(
                          width: 220,
                          margin:
                          const EdgeInsets.only(right: 18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.05),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                const BorderRadius.vertical(
                                  top: Radius.circular(30),
                                ),
                                child: Image.network(
                                  food["image"],
                                  height: 140,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.all(18),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      isKorean
                                          ? food["kName"]
                                          : food["name"],
                                      style:
                                      const TextStyle(
                                        fontSize: 24,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      isKorean
                                          ? food["kDesc"]
                                          : food["desc"],
                                      style: TextStyle(
                                        color: Colors
                                            .grey.shade700,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}