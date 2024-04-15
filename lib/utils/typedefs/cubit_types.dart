import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/sealed.dart';
import 'package:brujanime/utils/typedefs/state_types.dart';


/// Types for Data Loading cubits
typedef TopUpcomingLoadingCubit = DataLoadingCubit<TopUpcomingData, Anime>;
typedef TopAllLoadingCubit = DataLoadingCubit<TopAllData, Anime>;

/// Types for Data Blocs
typedef TopAllCubit = DataCubit<TopAllData, Anime>;
typedef TopUpcomingCubit = DataCubit<TopUpcomingData, Anime>;