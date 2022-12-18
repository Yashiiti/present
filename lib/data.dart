import 'package:krishi_seva/models/crops.dart';
import 'package:krishi_seva/models/diseases.dart';
import 'package:krishi_seva/models/pests.dart';

// ignore: unnecessary_const
const crops = const [
  Crop(id: 'ric', title: 'Rice', image: 'assets/images/rice.jpg'),
  Crop(id: 'whe', title: 'Wheat', image: 'assets/images/wheat.jpg'),
  Crop(id: 'soy', title: 'Soyabean', image: 'assets/images/soyabean.jpg'),
  Crop(id: 'mus', title: 'Mustard', image: 'assets/images/mustard.jpg'),
];

// ignore: unnecessary_const
const allPests = const [
  Pest(
      id: 'pes1',
      crop: 'ric',
      title: 'Thrips',
      description:
          'Both the adults and nymphs lacerate the tender leaves and suck up the plant sap. As a result fine yellowish lines or silvery streaks are seen on the leaves. Later, the leaves curl longitudinally and begin to dry from the tip downwards In severe cases, the entire nursery may dry up and fail to produce seedling. Sometimes transplanted crop is also affected in the early stages.',
      images: [
        'http://www.agritech.tnau.ac.in/expert_system/paddy/Images/Images/Cropprotection/pest%20photos/6.%20thrips/symptoms/1-LACERATION%20OF%20TENDER%20LEAVES.JPG'
      ])
];

// ignore: unnecessary_const
const allDiseases = const [
  Disease(
      id: 'dis1',
      crop: 'ric',
      title: 'Thrips',
      description:
          'Both the adults and nymphs lacerate the tender leaves and suck up the plant sap. As a result fine yellowish lines or silvery streaks are seen on the leaves. Later, the leaves curl longitudinally and begin to dry from the tip downwards In severe cases, the entire nursery may dry up and fail to produce seedling. Sometimes transplanted crop is also affected in the early stages.',
      images: [
        'http://www.agritech.tnau.ac.in/expert_system/paddy/Images/Images/Cropprotection/pest%20photos/6.%20thrips/symptoms/1-LACERATION%20OF%20TENDER%20LEAVES.JPG'
      ])
];
