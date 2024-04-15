import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/models/models.dart';
import 'package:brujanime/utils/sealed.dart';

/// Types for Data Loading cubits
typedef TopUpcomingLoadingCubit = DataLoadingCubit<TopUpcomingData, Anime>;
typedef TopAllLoadingCubit = DataLoadingCubit<TopAllData, Anime>;
typedef TopAiringLoadingCubit = DataLoadingCubit<TopAiringData, Anime>;
typedef RecommendationsLoadingCubit = DataLoadingCubit<RecommendationsData, AnimeRecommendation>;
typedef SeasonNowLoadingCubit = DataLoadingCubit<SeasonNowData, Anime>;


/// Types for Data Blocs
typedef TopAllCubit = DataCubit<TopAllData, Anime>;
typedef TopUpcomingCubit = DataCubit<TopUpcomingData, Anime>;
typedef TopAiringCubit = DataCubit<TopAiringData, Anime>;
typedef RecommendationsCubit = DataCubit<RecommendationsData, AnimeRecommendation>;
typedef SeasonNowCubit = DataCubit<SeasonNowData, Anime>;
