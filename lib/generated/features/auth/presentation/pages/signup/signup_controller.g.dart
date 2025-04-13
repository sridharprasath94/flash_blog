// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../features/auth/presentation/pages/signup/signup_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signupControllerImplHash() =>
    r'6306aa679e007e8c460b7eaa8df5c230f034572c';

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

abstract class _$SignupControllerImpl
    extends BuildlessAutoDisposeNotifier<SignupModel> {
  late final SignupNavigationService navigationService;

  SignupModel build({required SignupNavigationService navigationService});
}

/// See also [SignupControllerImpl].
@ProviderFor(SignupControllerImpl)
const signupControllerImplProvider = SignupControllerImplFamily();

/// See also [SignupControllerImpl].
class SignupControllerImplFamily extends Family<SignupModel> {
  /// See also [SignupControllerImpl].
  const SignupControllerImplFamily();

  /// See also [SignupControllerImpl].
  SignupControllerImplProvider call({
    required SignupNavigationService navigationService,
  }) {
    return SignupControllerImplProvider(navigationService: navigationService);
  }

  @override
  SignupControllerImplProvider getProviderOverride(
    covariant SignupControllerImplProvider provider,
  ) {
    return call(navigationService: provider.navigationService);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'signupControllerImplProvider';
}

/// See also [SignupControllerImpl].
class SignupControllerImplProvider
    extends AutoDisposeNotifierProviderImpl<SignupControllerImpl, SignupModel> {
  /// See also [SignupControllerImpl].
  SignupControllerImplProvider({
    required SignupNavigationService navigationService,
  }) : this._internal(
         () => SignupControllerImpl()..navigationService = navigationService,
         from: signupControllerImplProvider,
         name: r'signupControllerImplProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$signupControllerImplHash,
         dependencies: SignupControllerImplFamily._dependencies,
         allTransitiveDependencies:
             SignupControllerImplFamily._allTransitiveDependencies,
         navigationService: navigationService,
       );

  SignupControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final SignupNavigationService navigationService;

  @override
  SignupModel runNotifierBuild(covariant SignupControllerImpl notifier) {
    return notifier.build(navigationService: navigationService);
  }

  @override
  Override overrideWith(SignupControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: SignupControllerImplProvider._internal(
        () => create()..navigationService = navigationService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SignupControllerImpl, SignupModel>
  createElement() {
    return _SignupControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignupControllerImplProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SignupControllerImplRef on AutoDisposeNotifierProviderRef<SignupModel> {
  /// The parameter `navigationService` of this provider.
  SignupNavigationService get navigationService;
}

class _SignupControllerImplProviderElement
    extends
        AutoDisposeNotifierProviderElement<SignupControllerImpl, SignupModel>
    with SignupControllerImplRef {
  _SignupControllerImplProviderElement(super.provider);

  @override
  SignupNavigationService get navigationService =>
      (origin as SignupControllerImplProvider).navigationService;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
