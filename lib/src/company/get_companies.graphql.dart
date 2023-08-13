import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$getCompanies {
  Query$getCompanies({
    required this.listCompany,
    this.$__typename = 'Query',
  });

  factory Query$getCompanies.fromJson(Map<String, dynamic> json) {
    final l$listCompany = json['listCompany'];
    final l$$__typename = json['__typename'];
    return Query$getCompanies(
      listCompany: (l$listCompany as List<dynamic>)
          .map((e) => Query$getCompanies$listCompany.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getCompanies$listCompany> listCompany;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$listCompany = listCompany;
    _resultData['listCompany'] = l$listCompany.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$listCompany = listCompany;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$listCompany.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getCompanies) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$listCompany = listCompany;
    final lOther$listCompany = other.listCompany;
    if (l$listCompany.length != lOther$listCompany.length) {
      return false;
    }
    for (int i = 0; i < l$listCompany.length; i++) {
      final l$listCompany$entry = l$listCompany[i];
      final lOther$listCompany$entry = lOther$listCompany[i];
      if (l$listCompany$entry != lOther$listCompany$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getCompanies on Query$getCompanies {
  CopyWith$Query$getCompanies<Query$getCompanies> get copyWith =>
      CopyWith$Query$getCompanies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getCompanies<TRes> {
  factory CopyWith$Query$getCompanies(
    Query$getCompanies instance,
    TRes Function(Query$getCompanies) then,
  ) = _CopyWithImpl$Query$getCompanies;

  factory CopyWith$Query$getCompanies.stub(TRes res) =
      _CopyWithStubImpl$Query$getCompanies;

  TRes call({
    List<Query$getCompanies$listCompany>? listCompany,
    String? $__typename,
  });
  TRes listCompany(
      Iterable<Query$getCompanies$listCompany> Function(
              Iterable<
                  CopyWith$Query$getCompanies$listCompany<
                      Query$getCompanies$listCompany>>)
          _fn);
}

class _CopyWithImpl$Query$getCompanies<TRes>
    implements CopyWith$Query$getCompanies<TRes> {
  _CopyWithImpl$Query$getCompanies(
    this._instance,
    this._then,
  );

  final Query$getCompanies _instance;

  final TRes Function(Query$getCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listCompany = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCompanies(
        listCompany: listCompany == _undefined || listCompany == null
            ? _instance.listCompany
            : (listCompany as List<Query$getCompanies$listCompany>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes listCompany(
          Iterable<Query$getCompanies$listCompany> Function(
                  Iterable<
                      CopyWith$Query$getCompanies$listCompany<
                          Query$getCompanies$listCompany>>)
              _fn) =>
      call(
          listCompany: _fn(_instance.listCompany
              .map((e) => CopyWith$Query$getCompanies$listCompany(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getCompanies<TRes>
    implements CopyWith$Query$getCompanies<TRes> {
  _CopyWithStubImpl$Query$getCompanies(this._res);

  TRes _res;

  call({
    List<Query$getCompanies$listCompany>? listCompany,
    String? $__typename,
  }) =>
      _res;
  listCompany(_fn) => _res;
}

const documentNodeQuerygetCompanies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getCompanies'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listCompany'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getCompanies _parserFn$Query$getCompanies(Map<String, dynamic> data) =>
    Query$getCompanies.fromJson(data);
typedef OnQueryComplete$Query$getCompanies = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getCompanies?,
);

class Options$Query$getCompanies
    extends graphql.QueryOptions<Query$getCompanies> {
  Options$Query$getCompanies({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCompanies? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getCompanies? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$getCompanies(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetCompanies,
          parserFn: _parserFn$Query$getCompanies,
        );

  final OnQueryComplete$Query$getCompanies? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getCompanies
    extends graphql.WatchQueryOptions<Query$getCompanies> {
  WatchOptions$Query$getCompanies({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCompanies? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetCompanies,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getCompanies,
        );
}

class FetchMoreOptions$Query$getCompanies extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getCompanies(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerygetCompanies,
        );
}

extension ClientExtension$Query$getCompanies on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getCompanies>> query$getCompanies(
          [Options$Query$getCompanies? options]) async =>
      await this.query(options ?? Options$Query$getCompanies());
  graphql.ObservableQuery<Query$getCompanies> watchQuery$getCompanies(
          [WatchOptions$Query$getCompanies? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getCompanies());
  void writeQuery$getCompanies({
    required Query$getCompanies data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerygetCompanies)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getCompanies? readQuery$getCompanies({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetCompanies)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getCompanies.fromJson(result);
  }
}

class Query$getCompanies$listCompany {
  Query$getCompanies$listCompany({
    required this.id,
    required this.name,
    this.$__typename = 'Company',
  });

  factory Query$getCompanies$listCompany.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getCompanies$listCompany(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getCompanies$listCompany) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getCompanies$listCompany
    on Query$getCompanies$listCompany {
  CopyWith$Query$getCompanies$listCompany<Query$getCompanies$listCompany>
      get copyWith => CopyWith$Query$getCompanies$listCompany(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCompanies$listCompany<TRes> {
  factory CopyWith$Query$getCompanies$listCompany(
    Query$getCompanies$listCompany instance,
    TRes Function(Query$getCompanies$listCompany) then,
  ) = _CopyWithImpl$Query$getCompanies$listCompany;

  factory CopyWith$Query$getCompanies$listCompany.stub(TRes res) =
      _CopyWithStubImpl$Query$getCompanies$listCompany;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getCompanies$listCompany<TRes>
    implements CopyWith$Query$getCompanies$listCompany<TRes> {
  _CopyWithImpl$Query$getCompanies$listCompany(
    this._instance,
    this._then,
  );

  final Query$getCompanies$listCompany _instance;

  final TRes Function(Query$getCompanies$listCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCompanies$listCompany(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getCompanies$listCompany<TRes>
    implements CopyWith$Query$getCompanies$listCompany<TRes> {
  _CopyWithStubImpl$Query$getCompanies$listCompany(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
