// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../features/blog/presentation/pages/add_new_blog/add_new_blog_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addNewBlogControllerImplHash() =>
    r'94afb6b44e835f129a829f23fe6b514a71230920';

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

abstract class _$AddNewBlogControllerImpl
    extends BuildlessAutoDisposeNotifier<AddNewBlogModel> {
  late final AddNewBlogNavigationService navigationService;
  late final AuthBloc authBloc;

  AddNewBlogModel build({
    required AddNewBlogNavigationService navigationService,
    required AuthBloc authBloc,
  });
}

/// See also [AddNewBlogControllerImpl].
@ProviderFor(AddNewBlogControllerImpl)
const addNewBlogControllerImplProvider = AddNewBlogControllerImplFamily();

/// See also [AddNewBlogControllerImpl].
class AddNewBlogControllerImplFamily extends Family<AddNewBlogModel> {
  /// See also [AddNewBlogControllerImpl].
  const AddNewBlogControllerImplFamily();

  /// See also [AddNewBlogControllerImpl].
  AddNewBlogControllerImplProvider call({
    required AddNewBlogNavigationService navigationService,
    required AuthBloc authBloc,
  }) {
    return AddNewBlogControllerImplProvider(
      navigationService: navigationService,
      authBloc: authBloc,
    );
  }

  @override
  AddNewBlogControllerImplProvider getProviderOverride(
    covariant AddNewBlogControllerImplProvider provider,
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
  String? get name => r'addNewBlogControllerImplProvider';
}

/// See also [AddNewBlogControllerImpl].
class AddNewBlogControllerImplProvider
    extends
        AutoDisposeNotifierProviderImpl<
          AddNewBlogControllerImpl,
          AddNewBlogModel
        > {
  /// See also [AddNewBlogControllerImpl].
  AddNewBlogControllerImplProvider({
    required AddNewBlogNavigationService navigationService,
    required AuthBloc authBloc,
  }) : this._internal(
         () =>
             AddNewBlogControllerImpl()
               ..navigationService = navigationService
               ..authBloc = authBloc,
         from: addNewBlogControllerImplProvider,
         name: r'addNewBlogControllerImplProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$addNewBlogControllerImplHash,
         dependencies: AddNewBlogControllerImplFamily._dependencies,
         allTransitiveDependencies:
             AddNewBlogControllerImplFamily._allTransitiveDependencies,
         navigationService: navigationService,
         authBloc: authBloc,
       );

  AddNewBlogControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.authBloc,
  }) : super.internal();

  final AddNewBlogNavigationService navigationService;
  final AuthBloc authBloc;

  @override
  AddNewBlogModel runNotifierBuild(
    covariant AddNewBlogControllerImpl notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      authBloc: authBloc,
    );
  }

  @override
  Override overrideWith(AddNewBlogControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddNewBlogControllerImplProvider._internal(
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
  AutoDisposeNotifierProviderElement<AddNewBlogControllerImpl, AddNewBlogModel>
  createElement() {
    return _AddNewBlogControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddNewBlogControllerImplProvider &&
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
mixin AddNewBlogControllerImplRef
    on AutoDisposeNotifierProviderRef<AddNewBlogModel> {
  /// The parameter `navigationService` of this provider.
  AddNewBlogNavigationService get navigationService;

  /// The parameter `authBloc` of this provider.
  AuthBloc get authBloc;
}

class _AddNewBlogControllerImplProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          AddNewBlogControllerImpl,
          AddNewBlogModel
        >
    with AddNewBlogControllerImplRef {
  _AddNewBlogControllerImplProviderElement(super.provider);

  @override
  AddNewBlogNavigationService get navigationService =>
      (origin as AddNewBlogControllerImplProvider).navigationService;
  @override
  AuthBloc get authBloc =>
      (origin as AddNewBlogControllerImplProvider).authBloc;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
