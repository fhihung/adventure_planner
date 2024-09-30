import 'package:adventure_planner/home/bloc/home_bloc.dart';
import 'package:adventure_planner/home/bloc/home_event.dart';
import 'package:adventure_planner/home/bloc/home_state.dart';
import 'package:adventure_planner/utils/constants/app_spaces.dart';
import 'package:adventure_planner/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeInitiated());
    super.initState();
  }

  final List<Map<String, dynamic>> popularPlaces = [
    {
      'name': 'Đà Nẵng',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeKXrQrkiz5WKNhm_xQPhKAtjDBxe56CT3Tw&s',
    },
    {
      'name': 'Hội An',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMH4G9-T5dcIOLa6enyAUelzdiGLTOMBG-1g&s',
    },
    {
      'name': 'Huế',
      'image':
          'https://mia.vn/media/uploads/blog-du-lich/ru-nhau-di-du-lich-hue-thang-4-nhung-hue-thang-4-co-gi-ban-da-biet-chua--1639495990.jpg',
    },
    {
      'name': 'Hà Nội',
      'image':
          'https://www.vietmytravel.com/wp-content/uploads/2019/04/hồ-hoàn-kiếm_vietmytravel_du-lịch-hà-nội-e1554716923715.jpg',
    },
    {
      'name': 'Quy Nhơn',
      'image': 'https://i2.ex-cdn.com/crystalbay.com/files/content/2024/05/16/du-lich-quy-nhon-2-1653.jpg',
    },
  ];
  final List<Map<String, dynamic>> suggestionPlans = [
    {
      'name': 'Explore Da Nang',
      'description':
          'A 3-day adventure exploring the beautiful beaches, Marble Mountains, and the Dragon Bridge in Da Nang.',
    },
    {
      'name': 'Cultural Tour of Hoi An',
      'description':
          'A 2-day cultural trip through the ancient town of Hoi An, visiting the lantern market and enjoying traditional cuisine.',
    },
    {
      'name': 'Historical Hue Journey',
      'description':
          'A 4-day journey exploring the ancient capital of Hue, visiting the Imperial City and various royal tombs.',
    },
    {
      'name': 'Hiking in Sapa',
      'description':
          'A 5-day hiking trip in Sapa, exploring the stunning terraced fields and experiencing local hill tribe culture.',
    },
    {
      'name': 'Beach Relaxation in Nha Trang',
      'description':
          'A 3-day relaxing getaway to the coastal city of Nha Trang, enjoying the clear waters and vibrant nightlife.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              state.user?.name ?? 'Home Screen',
              style: AppTextStyle.body2Bold,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpaces.space6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Popular Places',
                  style: AppTextStyle.body2Bold,
                ),
                const SizedBox(
                  height: AppSpaces.space3,
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: popularPlaces.length,
                    itemBuilder: (context, index) {
                      final popularPlace = popularPlaces[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: AppSpaces.space2,
                        ),
                        child: Card(
                          elevation: 1.5,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.network(
                                    '${popularPlace['image']}',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSpaces.space3,
                                ),
                                Expanded(
                                  child: Text(
                                    '${popularPlace['name']}',
                                    style: AppTextStyle.body2Bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: AppSpaces.space5,
                ),
                Text(
                  'Suggestion Plan',
                  style: AppTextStyle.body2Bold,
                ),
                SizedBox(
                  height: AppSpaces.space3,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.popularSuggestion?.length,
                    itemBuilder: (context, index) {
                      final popularSuggestion = state.popularSuggestion?[index];
                      return Card(
                        elevation: 1.5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${popularSuggestion?.location}',
                                style: AppTextStyle.body2Bold,
                              ),
                              const SizedBox(
                                height: AppSpaces.space3,
                              ),
                              Text(
                                '${popularSuggestion?.days}',
                                style: AppTextStyle.body2,
                              ),
                              Text('${popularSuggestion?.description}'),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
