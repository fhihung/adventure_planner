import 'package:flutter/material.dart';

class TravelSuggestionScreen extends StatelessWidget {
  final Map<String, dynamic> suggestion = {
    "location": "Hà Nội - Huế",
    "days": 3,
    "activities": [
      {
        "day": 1,
        "schedule": [
          {
            "time": "8:00 AM",
            "activity":
                "Khởi hành từ Hà Nội, di chuyển đến Huế bằng tàu hỏa (khoảng 12 giờ). Thưởng thức bữa sáng trên tàu."
          },
          {"time": "12:00 PM", "activity": "Nghỉ ngơi trên tàu, ngắm cảnh."},
          {
            "time": "6:00 PM",
            "activity":
                "Đến Huế, nhận phòng khách sạn. Tản bộ dọc bờ sông Hương, ngắm hoàng hôn và thưởng thức bữa tối tại nhà hàng ven sông."
          }
        ]
      },
      {
        "day": 2,
        "schedule": [
          {"time": "8:00 AM", "activity": "Tham quan Đại Nội, Lăng Khải Định, Chùa Thiên Mụ."},
          {"time": "12:00 PM", "activity": "Thưởng thức bữa trưa tại nhà hàng địa phương."},
          {
            "time": "6:00 PM",
            "activity":
                "Trải nghiệm chèo thuyền trên sông Hương, ngắm cảnh hoàng hôn và thưởng thức bữa tối tại nhà hàng ven sông."
          }
        ]
      },
      {
        "day": 3,
        "schedule": [
          {
            "time": "8:00 AM",
            "activity":
                "Tham quan làng nghề truyền thống tại Huế như làng gốm Thanh Hà, làng chiếu Thừa Thiên, làng nghề làm nón."
          },
          {"time": "12:00 PM", "activity": "Thưởng thức bữa trưa tại quán ăn địa phương."},
          {"time": "6:00 PM", "activity": "Mua sắm đặc sản Huế, di chuyển về Hà Nội bằng tàu hỏa."}
        ]
      }
    ],
    "costEstimate": "20.000.000 (bao gồm vé tàu, khách sạn, ăn uống, tham quan, di chuyển nội thành)",
    "hotels": [
      {"hotelName": "La Siesta Hotel Hue", "website": "https://www.lasiestahotelhue.com/"},
      {"hotelName": "Avani+ Huế Resort & Spa", "website": "https://www.avanihotels.com/en/huế/"}
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Suggestion'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Location: ${suggestion['location']}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Days: ${suggestion['days']} days'),
          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: suggestion['activities'].length as int,
            itemBuilder: (context, index) {
              var activity = suggestion['activities'][index];
              return _buildActivityCard(activity as Map<String, dynamic>);
            },
          ),
          SizedBox(height: 20),
          Text(
            'Cost Estimate: ${suggestion['costEstimate']}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text('Recommended Hotels:'),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: suggestion['hotels'].length as int,
            itemBuilder: (context, index) {
              var hotel = suggestion['hotels'][index];
              return ListTile(
                title: Text(hotel['hotelName'] as String),
                subtitle: Text(hotel['website'] as String),
                onTap: () {
                  // Xử lý mở website khách sạn khi được nhấn
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActivityCard(Map<String, dynamic> activity) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Day ${activity['day']}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: activity['schedule'].length as int,
              itemBuilder: (context, index) {
                var schedule = activity['schedule'][index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Text(schedule['time'] as String, style: TextStyle(fontSize: 16)),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(schedule['activity'] as String, style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
