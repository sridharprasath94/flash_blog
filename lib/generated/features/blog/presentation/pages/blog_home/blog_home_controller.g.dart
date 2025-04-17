// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../features/blog/presentation/pages/blog_home/blog_home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$blogHomeControllerImplHash() =>
    r'ccac2fe8539ae84849ce5f6425947b8cbcc39f58';

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

abstract class _$BlogHomeControllerImpl
    extends BuildlessAutoDisposeNotifier<BlogHomeModel> {
  late final BlogHomeNavigationService navigationService;
  late final AuthBloc authBloc;
  late final BlogBloc blogBloc;

  BlogHomeModel build({
    required BlogHomeNavigationService navigationService,
    required AuthBloc authBloc,
    required BlogBloc blogBloc,
  });
}

/// See also [BlogHomeControllerImpl].
@ProviderFor(BlogHomeControllerImpl)
const blogHomeControllerImplProvider = BlogHomeControllerImplFamily();

/// See also [BlogHomeControllerImpl].
class BlogHomeControllerImplFamily extends Family<BlogHomeModel> {
  /// See also [BlogHomeControllerImpl].
  const BlogHomeControllerImplFamily();

  /// See also [BlogHomeControllerImpl].
  BlogHomeControllerImplProvider call({
    required BlogHomeNavigationService navigationService,
    required AuthBloc authBloc,
    required BlogBloc blogBloc,
  }) {
    return BlogHomeControllerImplProvider(
      navigationService: navigationService,
      authBloc: authBloc,
      blogBloc: blogBloc,
    );
  }

  @override
  BlogHomeControllerImplProvider getProviderOverride(
    covariant BlogHomeControllerImplProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      authBloc: provider.authBloc,
      blogBloc: provider.blogBloc,
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
  String? get name => r'blogHomeControllerImplProvider';
}

/// See also [BlogHomeControllerImpl].
class BlogHomeControllerImplProvider
    extends
        AutoDisposeNotifierProviderImpl<BlogHomeControllerImpl, BlogHomeModel> {
  /// See also [BlogHomeControllerImpl].
  BlogHomeControllerImplProvider({
    required BlogHomeNavigationService navigationService,
    required AuthBloc authBloc,
    required BlogBloc blogBloc,
  }) : this._internal(
         () =>
             BlogHomeControllerImpl()
               ..navigationService = navigationService
               ..authBloc = authBloc
               ..blogBloc = blogBloc,
         from: blogHomeControllerImplProvider,
         name: r'blogHomeControllerImplProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$blogHomeControllerImplHash,
         dependencies: BlogHomeControllerImplFamily._dependencies,
         allTransitiveDependencies:
             BlogHomeControllerImplFamily._allTransitiveDependencies,
         navigationService: navigationService,
         authBloc: authBloc,
         blogBloc: blogBloc,
       );

  BlogHomeControllerImplProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.authBloc,
    required this.blogBloc,
  }) : super.internal();

  final BlogHomeNavigationService navigationService;
  final AuthBloc authBloc;
  final BlogBloc blogBloc;

  @override
  BlogHomeModel runNotifierBuild(covariant BlogHomeControllerImpl notifier) {
    return notifier.build(
      navigationService: navigationService,
      authBloc: authBloc,
      blogBloc: blogBloc,
    );
  }

  @override
  Override overrideWith(BlogHomeControllerImpl Function() create) {
    return ProviderOverride(
      origin: this,
      override: BlogHomeControllerImplProvider._internal(
        () =>
            create()
              ..navigationService = navigationService
              ..authBloc = authBloc
              ..blogBloc = blogBloc,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        authBloc: authBloc,
        blogBloc: blogBloc,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<BlogHomeControllerImpl, BlogHomeModel>
  createElement() {
    return _BlogHomeControllerImplProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BlogHomeControllerImplProvider &&
        other.navigationService == navigationService &&
        other.authBloc == authBloc &&
        other.blogBloc == blogBloc;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, authBloc.hashCode);
    hash = _SystemHash.combine(hash, blogBloc.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BlogHomeControllerImplRef
    on AutoDisposeNotifierProviderRef<BlogHomeModel> {
  /// The parameter `navigationService` of this provider.
  BlogHomeNavigationService get navigationService;

  /// The parameter `authBloc` of this provider.
  AuthBloc get authBloc;

  /// The parameter `blogBloc` of this provider.
  BlogBloc get blogBloc;
}

class _BlogHomeControllerImplProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          BlogHomeControllerImpl,
          BlogHomeModel
        >
    with BlogHomeControllerImplRef {
  _BlogHomeControllerImplProviderElement(super.provider);

  @override
  BlogHomeNavigationService get navigationService =>
      (origin as BlogHomeControllerImplProvider).navigationService;
  @override
  AuthBloc get authBloc => (origin as BlogHomeControllerImplProvider).authBloc;
  @override
  BlogBloc get blogBloc => (origin as BlogHomeControllerImplProvider).blogBloc;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
