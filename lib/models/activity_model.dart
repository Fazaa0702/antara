class ActivityModel{
  String time;
  String activity;

  ActivityModel({
    required this.time,
    required this.activity,
});
}

var activityList = [
  ActivityModel(time: '21.00 - 22.00', activity: 'Nugas'),
  ActivityModel(time: '07.00 - 09.00', activity: 'Lari'),
  ActivityModel(time: '21.00 - 24.00', activity: 'Nugas'),
  ActivityModel(time: '21.00 - 23.00', activity: 'Makan'),
  ActivityModel(time: '02.00 - 03.00', activity: 'Solat Malam'),
];

