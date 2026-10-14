.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;Lkotlin/reflect/jvm/internal/impl/types/checker/k;)V
    .locals 25

    move-object/from16 v1, p1

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDataFinder"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationAndConstantLoader"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragmentProvider"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    move-object/from16 v12, p7

    invoke-static {v12, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    move-object/from16 v9, p9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractDeserializer"

    move-object/from16 v13, p10

    invoke-static {v13, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p11

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    instance-of v7, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    goto :goto_0

    :cond_0
    move-object v0, v10

    .line 3
    :goto_0
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    .line 4
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    .line 5
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v17

    if-nez v0, :cond_1

    move-object/from16 v16, v10

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->G0()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v16

    :goto_1
    if-nez v16, :cond_2

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/descriptors/a1/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a1/a$a;

    :cond_2
    move-object/from16 v22, v16

    if-nez v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->G0()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v10

    :goto_2
    if-nez v10, :cond_4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a1/c$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a1/c$b;

    move-object/from16 v23, v0

    goto :goto_3

    :cond_4
    move-object/from16 v23, v10

    .line 8
    :goto_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;->a:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    move-result-object v16

    .line 9
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/n/b;

    move-object/from16 v18, v0

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v1, v10}, Lkotlin/reflect/jvm/internal/impl/resolve/n/b;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Ljava/lang/Iterable;)V

    const/16 v19, 0x0

    const/high16 v20, 0x40000

    const/16 v21, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v10, v11

    move-object/from16 v11, v17

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v24, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v17, p11

    .line 10
    invoke-direct/range {v0 .. v21}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;Lkotlin/reflect/jvm/internal/impl/descriptors/c0;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;Lkotlin/reflect/jvm/internal/impl/descriptors/a1/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a1/c;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/types/checker/k;Lkotlin/reflect/jvm/internal/impl/resolve/n/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a1/e;ILkotlin/jvm/internal/o;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    return-object v0
.end method
