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
    ],
    symptoms: [
      'Leaf shows discoloration and rolling',
      'Yellow (or) silvery streaks on the leaves of young seedlings',
      'Terminal rolling and drying of leaves from tip to base',
      'It causes damage both in nursery and main field',
      'Leaf tips wither off when severely infested',
      'Unfilled grains at panicle stage',
    ],
    identification: [
      'Egg: Freshly laid egg is hyaline and turns pale yellow when about to mature. The egg is very tiny and measures 0.25 mm long.',
      'Larva: Neonate larvae are transparent and towards the second molting, they turn to pale yellow. The legs, head, and antennae of the second instar larvae are slightly darker than those of the first instar larvae',
      'Pupa: The pupa has long wing pads that reach two-thirds the length of the abdomen. It also has four pointed processes on the ninth abdominal tergite. The pre-pupa is brown. Four pointed processes are present on the hind margin of the ninth abdominal tergite.',
      'Adult: The adult has a slender body. It is dark brown and 1-2 mm long. It exists in two forms, winged or wingless. The winged form has two pairs of elongated narrow wings that are fringed with long hairs.'
    ],
    management: [
      'ETL: 60 numbers in 12 passes or rolling of the first and second leaves in 10% of seedlings. Spray Phosphamidon 40 SL 50 ml'
    ],
  ),
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
