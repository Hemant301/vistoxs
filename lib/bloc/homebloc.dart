import 'package:rxdart/rxdart.dart';
import 'package:vistox/Modal/homemodal.dart';
import 'package:vistox/repo/homerepo.dart';

class HomeBloc {
  HomeRepo _homeRepo = HomeRepo();
  final BehaviorSubject<SliderModal> _liveSlider =
      BehaviorSubject<SliderModal>();

  BehaviorSubject<SliderModal> get getHomeSlider => _liveSlider;

  fetchHomeSlider(id) async {
    try {
      _liveSlider.addError('error');
      SliderModal homeSlider = await _homeRepo.fetchHomeSlider(id);
      // print(homeSlider.imgs!.length);

      _liveSlider.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<ClosetoYouModal> _liveClosetoyou =
      BehaviorSubject<ClosetoYouModal>();

  BehaviorSubject<ClosetoYouModal> get getClosetoyou => _liveClosetoyou;

  fetchClosetoyou(id) async {
    try {
      _liveClosetoyou.addError('error');
      ClosetoYouModal homeSlider = await _homeRepo.fetchClosetoyou(id);
      // print(homeSlider.imgs!.length);

      _liveClosetoyou.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<ClosetoYouModal> _liveSection2 =
      BehaviorSubject<ClosetoYouModal>();

  BehaviorSubject<ClosetoYouModal> get getSection2 => _liveSection2;

  fetchSection2(id) async {
    try {
      _liveSection2.addError('error');
      ClosetoYouModal homeSlider = await _homeRepo.fetchSection2(id);
      // print(homeSlider.imgs!.length);

      _liveSection2.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<ClosetoYouModal> _liveSection3 =
      BehaviorSubject<ClosetoYouModal>();

  BehaviorSubject<ClosetoYouModal> get getSection3 => _liveSection3;

  fetchSection3(id) async {
    try {
      _liveSection3.addError('error');
      ClosetoYouModal homeSlider = await _homeRepo.fetchSection3(id);
      // print(homeSlider.imgs!.length);

      _liveSection3.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<ClosetoYouModal> _liveSection4 =
      BehaviorSubject<ClosetoYouModal>();

  BehaviorSubject<ClosetoYouModal> get getSection4 => _liveSection4;

  fetchSection4(id) async {
    try {
      _liveSection4.addError('error');
      ClosetoYouModal homeSlider = await _homeRepo.fetchSection4(id);
      // print(homeSlider.imgs!.length);

      _liveSection4.add(homeSlider);
    } catch (e) {
      print(e);
    }
  }

  final BehaviorSubject<ClosetoYouModal> _liveSupersubcat =
      BehaviorSubject<ClosetoYouModal>();

  BehaviorSubject<ClosetoYouModal> get getSupersubcat => _liveSupersubcat;

  fetchSupersubcat(id) async {
    try {
      _liveSupersubcat.addError('error');
      ClosetoYouModal homeSlider = await _homeRepo.fetchSupersubcat(id);
      // print(homeSlider.imgs!.length);

      _liveSupersubcat.add(homeSlider);
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
