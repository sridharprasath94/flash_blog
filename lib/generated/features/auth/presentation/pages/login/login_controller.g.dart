// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../features/auth/presentation/pages/login/login_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginControllerImplHash() =>
    r'52219bbac46c54d9b72af98c43325722054298d7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$LoginControllerImpl
    extends BuildlessAutoDisposeNotifier<LoginModel> {
  late final LoginNavigationService navigationService;
  late final AuthBloc authBloc;

  LoginModel build({
    required LoginNavigationService navigationService,
    required AuthBloc authBloc,
  });
}

/// See also [LoginControllerImpl].
@ProviderFor(LoginControllerImpl)
const loginControllerImplProvider = LoginControllerImplFamily();

/// See also [LoginControllerImpl].
class LoginControllerImplFamily extends Family<LoginModel> {
  /// See also [LoginControllerImpl].
  const LoginControllerImplFamily();

  /// See also [LoginControllerImpl].
  LoginControllerImplProvider call({
    required LoginNavigationService navigationService,
    required AuthBloc authBloc,
  }) {
    return LoginControllerImplProvider(
      navigationService: navigationService,
      authBloc: authBloc,
    );
  }

  @override
  LoginControllerImplProvider getProviderOverride(
    covariant LoginControllerImplProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      authBloc: provider.authBloc,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'loginControllerImplProvider';
}

/// See also [LoginControllerImpl].
class LoginControllerImplProvider
    extends AutoDisposeNotifierProviderImpl<LoginControllerImpl, LoginModel> {
  /// See also [LoginControllerImpl].
  LoginControllerImplProvider({
    required LoginNavigationService navigationService,
    required AuthBloc authBloc,
  }) : this._internal(
         () =>
             LoginControllerImpl()
               ..navigationService = navigationService
               ..authBloc = authBloc,
         from: loginControllerImplProvider,
         name: r'loginControllerImplProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$loginControllerImplHash,
         dependencies: LoginControllerImplFamily._dependencies,
         allTransitiveDependencies:
             LoginControllerImplFamily._allTransitiveDependencies,
         navigationService: navigationService,
         authBloc: authBloc,
       );

  LoginControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.authBloc,
  }) : super.internal();

  final LoginNavigationService navigationService;
  final AuthBloc authBloc;

  @override
  LoginModel runNotifierBuild(covariant LoginControllerImpl notifier) {
    return notifier.build(
      navigationService: navigationService,
      authBloc: authBloc,
    );
  }

  @override
  Override overrideWith(LoginControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: LoginControllerImplProvider._internal(
        () =>
            create()
              ..navigationService = navigationService
              ..authBloc = authBloc,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        authBloc: authBloc,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<LoginControllerImpl, LoginModel>
  createElement() {
    return _LoginControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginControllerImplProvider &&
        other.navigationService == navigationService &&
        other.authBloc == authBloc;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, authBloc.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LoginControllerImplRef on AutoDisposeNotifierProviderRef<LoginModel> {
  /// The parameter `navigationService` of this provider.
  LoginNavigationService get navigationService;

  /// The parameter `authBloc` of this provider.
  AuthBloc get authBloc;
}

class _LoginControllerImplProviderElement
    extends AutoDisposeNotifierProviderElement<LoginControllerImpl, LoginModel>
    with LoginControllerImplRef {
  _LoginControllerImplProviderElement(super.provider);

  @override
  LoginNavigationService get navigationService =>
      (origin as LoginControllerImplProvider).navigationService;
  @override
  AuthBloc get authBloc => (origin as LoginControllerImplProvider).authBloc;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
