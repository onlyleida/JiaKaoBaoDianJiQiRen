.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;
    .locals 13

    move-object v2, p0

    move-object v1, p1

    move-object v7, p2

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    const-string v4, "module"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "storageManager"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notFoundClasses"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "lazyJavaPackageFragmentProvider"

    move-object/from16 v6, p3

    invoke-static {v6, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "reflectKotlinClassFinder"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deserializedDescriptorResolver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;

    invoke-direct {v4, v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;)V

    .line 2
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    invoke-direct {v5, p0, p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;)V

    .line 3
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    .line 4
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;

    .line 5
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/j;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/j;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/incremental/components/c$a;->a:Lkotlin/reflect/jvm/internal/impl/incremental/components/c$a;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f$a;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    move-result-object v10

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/k;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/k$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/k$a;->a()Lkotlin/reflect/jvm/internal/impl/types/checker/l;

    move-result-object v11

    move-object v0, v12

    .line 6
    invoke-direct/range {v0 .. v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;Lkotlin/reflect/jvm/internal/impl/types/checker/k;)V

    return-object v12
.end method

.method public static final b(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v16, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    const-string v1, "classLoader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "module"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "storageManager"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "notFoundClasses"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reflectKotlinClassFinder"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializedDescriptorResolver"

    move-object/from16 v3, p5

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "singleModuleClassResolver"

    move-object/from16 v3, p6

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packagePartProvider"

    move-object/from16 v3, p7

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    move-object/from16 v18, v10

    sget-object v20, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->d:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$a;

    invoke-virtual/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;)V

    .line 2
    invoke-virtual/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-result-object v23

    .line 3
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-object v1, v9

    .line 4
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/d;

    move-object v3, v6

    invoke-direct {v6, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/d;-><init>(Ljava/lang/ClassLoader;)V

    .line 5
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/components/e;

    move-object v6, v0

    const-string v7, "DO_NOTHING"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/j;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/j;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/components/d;

    move-object v8, v0

    move-object/from16 p4, v9

    const-string v9, "EMPTY"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/components/c$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/components/c$a;

    move-object/from16 v0, p4

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/resolve/n/b;

    move-object v0, v10

    move-object v10, v14

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v11, v15}, Lkotlin/reflect/jvm/internal/impl/resolve/n/b;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Ljava/lang/Iterable;)V

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m;

    .line 7
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/descriptors/r0$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/r0$a;

    move-object/from16 v15, p3

    sget-object v17, Lkotlin/reflect/jvm/internal/impl/incremental/components/c$a;->a:Lkotlin/reflect/jvm/internal/impl/incremental/components/c$a;

    move-object/from16 p5, v1

    move-object/from16 v28, v2

    move-object v2, v15

    move-object/from16 v1, p1

    move-object/from16 v15, v17

    move-object/from16 p6, v3

    .line 8
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v17, v3

    invoke-direct {v3, v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)V

    .line 9
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    move-object/from16 v19, v1

    .line 10
    invoke-virtual/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-result-object v2

    .line 11
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

    move-object/from16 v29, v4

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c$b;

    move-object/from16 v21, v4

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;)V

    .line 12
    invoke-direct {v1, v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;)V

    .line 13
    sget-object v20, Lkotlin/reflect/jvm/internal/impl/load/java/j$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/j$a;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/k;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/k$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/k$a;->a()Lkotlin/reflect/jvm/internal/impl/types/checker/l;

    move-result-object v22

    .line 14
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/l$a;

    move-object/from16 v24, v0

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/l$a;-><init>()V

    const/16 v25, 0x0

    const/high16 v26, 0x800000

    const/16 v27, 0x0

    move-object/from16 v1, p5

    move-object/from16 v3, p6

    move-object/from16 v2, v28

    move-object/from16 v4, v29

    .line 15
    invoke-direct/range {v1 .. v27}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/java/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/e;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/load/java/components/d;Lkotlin/reflect/jvm/internal/impl/load/java/components/c;Lkotlin/reflect/jvm/internal/impl/resolve/n/a;Lkotlin/reflect/jvm/internal/impl/load/java/w/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;Lkotlin/reflect/jvm/internal/impl/descriptors/r0;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;Lkotlin/reflect/jvm/internal/impl/types/checker/k;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;ILkotlin/jvm/internal/o;)V

    .line 16
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;)V

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;
    .locals 9

    move/from16 v0, p8

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/s$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/s$a;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 2
    invoke-static/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/l;->b(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-result-object v0

    return-object v0
.end method
