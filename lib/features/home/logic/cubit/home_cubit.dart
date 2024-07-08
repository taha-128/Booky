import 'package:books_app/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  String getHelloLabel() {
    return '${S.current.hi} ${FirebaseAuth.instance.currentUser!.displayName!}';
  }
}
