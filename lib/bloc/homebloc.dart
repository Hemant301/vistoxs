import 'package:rxdart/rxdart.dart';
import 'package:vistox/Modal/homemodal.dart';
import 'package:vistox/repo/homerepo.dart';

class HomeBloc {
  HomeRepo _homeRepo = HomeRepo();
  final BehaviorSubject<SliderModal> _liveSlider =
      BehaviorSubject<SliderModal>();

  BehaviorSubject<SliderModal> get getHomeSlider => _liveSlider;

  fetchHomeSlider() async {
    try {
      SliderModal homeSlider = await _homeRepo.fetchHomeSlider();
      // print(homeSlider.imgs!.length);

      _liveSlider.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<SupercatModal> _liveHomecategory =
      BehaviorSubject<SupercatModal>();

  BehaviorSubject<SupercatModal> get getHomeCategory => _liveHomecategory;

  fetchHomeCategory() async {
    try {
      SupercatModal homeSlider = await _homeRepo.fetchHomeCategory();
      // print(homeSlider.imgs!.length);

      _liveHomecategory.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }
}

final homebloc = HomeBloc();
