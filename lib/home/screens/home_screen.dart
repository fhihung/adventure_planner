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
              children: [
                const Text(
                  'Popular Places',
                  style: AppTextStyle.body2Bold,
                ),
                const SizedBox(
                  height: AppSpaces.space7,
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: popularPlaces.length,
                    itemBuilder: (context, index) {
                      final popularPlace = popularPlaces[index];
                      return Card(
                        elevation: 1.5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  '${popularPlace['image']}',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '${popularPlace['name']}',
                              style: AppTextStyle.body2Bold,
                            ),
                          ],
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
