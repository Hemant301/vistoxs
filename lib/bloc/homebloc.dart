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

  final BehaviorSubject<SuperAppModal> _liveHomecategory =
      BehaviorSubject<SuperAppModal>();

  BehaviorSubject<SuperAppModal> get getHomeCategory => _liveHomecategory;

  fetchHomeCategory() async {
    try {
      SuperAppModal homeSlider = await _homeRepo.fetchHomeCategory();
      // print(homeSlider.imgs!.length);

      _liveHomecategory.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<HomeNearbyModal> _liveHomeNearby =
      BehaviorSubject<HomeNearbyModal>();

  BehaviorSubject<HomeNearbyModal> get getHomeNearby => _liveHomeNearby;

  fetchHomeNearby() async {
    try {
      HomeNearbyModal homeSlider = await _homeRepo.fetchHomeNearby();
      // print(homeSlider.imgs!.length);

      _liveHomeNearby.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<SupercatModal> _liveSupercat =
      BehaviorSubject<SupercatModal>();

  BehaviorSubject<SupercatModal> get getSupercat => _liveSupercat;

  fetchSupercat(id) async {
    try {
      SupercatModal homeSlider = await _homeRepo.fetchSupercat(id);
      // print(homeSlider.imgs!.length);

      _liveSupercat.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }
}

final homebloc = HomeBloc();
