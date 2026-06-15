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

  final List<Map<String, dynamic>> attractions = [
    {
      "title": "神仙居",
      "subtitle": "国家5A级景区",
      "desc": "奇峰云海与悬崖栈道闻名全国",
      "detail":
      "神仙居拥有壮观云海、玻璃栈道、瀑布群与山峰景观，是浙江最热门自然景区之一。",
      "image":
      "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
      "rating": "4.9",
    },
    {
      "title": "台州府城",
      "subtitle": "千年历史文化古城",
      "desc": "古城墙与历史街区保存完整",
      "detail":
      "台州府城融合江南文化与古建筑风格，是体验传统文化的重要地点。",
      "image":
      "https://images.unsplash.com/photo-1493246507139-91e8fad9978e",
      "rating": "4.8",
    },
    {
      "title": "长屿硐天",
      "subtitle": "世界级地质奇观",
      "desc": "千年人工石窟地下宫殿",
      "detail":
      "长屿硐天拥有巨大石窟群与独特地下空间，是世界著名地质奇观。",
      "image":
      "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
      "rating": "4.7",
    },
    {
      "title": "路桥十里长街",
      "subtitle": "江南古街文化",
      "desc": "保留完整的明清水乡商业街",
      "detail":
      "路桥十里长街拥有古桥、古街与传统商铺，是台州历史文化的重要代表。",
      "image":
      "https://images.unsplash.com/photo-1514565131-fce0801e5785",
      "rating": "4.8",
    },
    {
      "title": "椒江老街",
      "subtitle": "城市记忆街区",
      "desc": "融合现代与传统文化",
      "detail":
      "椒江老街拥有大量传统建筑、小吃与夜景，是体验台州烟火气的重要地点。",
      "image":
      "https://images.unsplash.com/photo-1501594907352-04cda38ebc29",
      "rating": "4.7",
    },
    {
      "title": "温岭千年曙光园",
      "subtitle": "新千年第一缕阳光",
      "desc": "滨海日出观景圣地",
      "detail":
      "温岭石塘千年曙光园以壮丽海上日出闻名，是全国著名海边景点。",
      "image":
      "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
      "rating": "4.9",
    },
  ];

  final List<Map<String, dynamic>> foods = [
    {
      "name": "嵌糕",
      "desc": "台州超人气传统小吃",
      "detail":
      "嵌糕夹入土豆丝、肉末、鸡蛋等丰富配料，是台州街头代表性美食。",
      "image":
      "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
    },
    {
      "name": "姜汤面",
      "desc": "台州传统特色早餐",
      "detail":
      "姜汤面是台州经典早餐，以姜汤搭配面条，暖胃又具有地方特色。",
      "image":
      "https://images.unsplash.com/photo-1515003197210-e0cd71810b5f",
    },
    {
      "name": "海鲜砂锅",
      "desc": "沿海特色海鲜料理",
      "detail":
      "海鲜砂锅融合虾、蟹、贝类等多种海鲜，是台州沿海饮食代表。",
      "image":
      "https://images.unsplash.com/photo-1559847844-5315695dadae",
    },
    {
      "name": "食饼筒",
      "desc": "台州特色卷饼",
      "detail":
      "食饼筒类似春卷，但内部馅料更加丰富，是传统节日美食。",
      "image":
      "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredAttractions = attractions.where((item) {
      return item["title"]
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
                  const Padding(
                    padding: EdgeInsets.fromLTRB(24, 120, 24, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "TAIZHOU",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            letterSpacing: 5,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "探索山海之城",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Discover mountains, ocean and culture.",
                          style: TextStyle(
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
                  TextField(
                    decoration: InputDecoration(
                      hintText: "搜索景点...",
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

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const WeatherPage(),
                        ),
                      );
                    },
                    child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "今日天气",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "台州 · 晴天",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "28°C",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.wb_sunny,
                            size: 90,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 35),

                  const Text(
                    "热门景点",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  ...filteredAttractions.map((item) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailPage(
                              title: item["title"],
                              subtitle: item["subtitle"],
                              desc: item["detail"],
                              image: item["image"],
                              rating: item["rating"],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          item["title"],
                                          style: const TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          Text(item["rating"]),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    item["subtitle"],
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    item["desc"],
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
                      ),
                    );
                  }).toList(),

                  const SizedBox(height: 35),

                  const Text(
                    "特色美食",
                    style: TextStyle(
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

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => FoodDetailPage(
                                  title: food["name"],
                                  desc: food["detail"],
                                  image: food["image"],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 220,
                            margin: const EdgeInsets.only(right: 18),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
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
                                  padding: const EdgeInsets.all(18),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        food["name"],
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        food["desc"],
                                        style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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

class DetailPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String desc;
  final String image;
  final String rating;

  const DetailPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.desc,
    required this.image,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                image,
                height: 260,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              title,
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.orange),
                const SizedBox(width: 5),
                Text(
                  rating,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              desc,
              style: const TextStyle(
                fontSize: 18,
                height: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodDetailPage extends StatelessWidget {
  final String title;
  final String desc;
  final String image;

  const FoodDetailPage({
    super.key,
    required this.title,
    required this.desc,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                image,
                height: 240,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              title,
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              desc,
              style: const TextStyle(
                fontSize: 18,
                height: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("天气详情")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade300,
                    Colors.blue.shade700,
                  ],
                ),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.wb_sunny,
                    size: 100,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "28°C",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "晴天 · 空气良好",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}