.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/e;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/descriptors/a1/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a1/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;Lkotlin/reflect/jvm/internal/impl/types/checker/k;Lkotlin/reflect/jvm/internal/impl/resolve/n/a;)V
    .locals 25

    move-object/from16 v13, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p3

    move-object/from16 v7, p4

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v3, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    const-string v0, "storageManager"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializationConfiguration"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v5, p8

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    move-object/from16 v5, p9

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/descriptors/z;)V

    .line 2
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    move-object v0, v9

    .line 3
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-object v4, v5

    invoke-direct {v5, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/c0;)V

    .line 4
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    move-object v5, v8

    move-object/from16 p2, v0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    invoke-direct {v8, v10, v7, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/s/d/a;)V

    .line 5
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p$a;

    .line 6
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    const-string v9, "DO_NOTHING"

    move-object/from16 v10, p4

    invoke-static {v10, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/incremental/components/c$a;->a:Lkotlin/reflect/jvm/internal/impl/incremental/components/c$a;

    move-object/from16 v10, p5

    .line 8
    sget-object v16, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m$a;

    move-object/from16 v13, p3

    move-object/from16 v22, v10

    move-object/from16 v10, v16

    move-object/from16 v23, v1

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/descriptors/a1/b;

    move-object/from16 v24, v2

    .line 9
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;

    invoke-direct {v2, v11, v13}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/z;)V

    const/16 v16, 0x0

    aput-object v2, v1, v16

    .line 10
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;

    const/16 v16, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 p4, v2

    move-object/from16 p5, p1

    move-object/from16 p6, p3

    move-object/from16 p7, v16

    move/from16 p8, v19

    move-object/from16 p9, v20

    invoke-direct/range {p4 .. p9}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/4 v11, 0x1

    aput-object v2, v1, v11

    .line 11
    invoke-static {v1}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 12
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    move-result-object v13

    move-object/from16 v1, p0

    .line 13
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/s/d/a;->e()Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    move-result-object v16

    const/16 v19, 0x0

    const/high16 v20, 0x40000

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    .line 14
    invoke-direct/range {v0 .. v21}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;Lkotlin/reflect/jvm/internal/impl/descriptors/c0;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;Lkotlin/reflect/jvm/internal/impl/descriptors/a1/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a1/c;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/types/checker/k;Lkotlin/reflect/jvm/internal/impl/resolve/n/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a1/e;ILkotlin/jvm/internal/o;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->i(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;)V

    return-void
.end method


# virtual methods
.method protected d(Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;
    .locals 7

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->f()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;->b(Lkotlin/reflect/jvm/internal/impl/name/c;)Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;->n:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->h()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->g()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a;->a(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;

    move-result-object p1

    :goto_0
    return-object p1
.end method
