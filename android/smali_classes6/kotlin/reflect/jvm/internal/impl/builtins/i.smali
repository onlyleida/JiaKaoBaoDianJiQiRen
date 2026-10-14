.class public final Lkotlin/reflect/jvm/internal/impl/builtins/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    .line 2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/t;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    const-string v9, "getErrorModule()"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/h;->e:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-direct {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/name/c;)V

    .line 3
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->f:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/c;->g()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v5

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/descriptors/o0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    sget-object v23, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->e:Lkotlin/reflect/jvm/internal/impl/storage/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v2, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v23

    .line 5
    invoke-direct/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;ZZLkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;Lkotlin/reflect/jvm/internal/impl/storage/m;)V

    .line 6
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-virtual {v8, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->I0(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)V

    .line 7
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-virtual {v8, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->K0(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    .line 8
    sget-object v18, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-virtual/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v1

    sget-object v20, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const-string v19, "T"

    invoke-static/range {v19 .. v19}, Lkotlin/reflect/jvm/internal/impl/name/f;->g(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, v20

    move-object/from16 v6, v23

    .line 9
    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g0;->N0(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/f;ILkotlin/reflect/jvm/internal/impl/storage/m;)Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-virtual {v8, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->J0(Ljava/util/List;)V

    .line 12
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->G0()V

    .line 13
    sput-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/i;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    .line 14
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    .line 15
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/t;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/h;->d:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-direct {v11, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/name/c;)V

    .line 16
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/h;->g:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/c;->g()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v0

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v17, v23

    .line 17
    invoke-direct/range {v10 .. v17}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;ZZLkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;Lkotlin/reflect/jvm/internal/impl/storage/m;)V

    .line 18
    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->I0(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)V

    .line 19
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->K0(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    .line 20
    invoke-virtual/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v18

    invoke-static/range {v19 .. v19}, Lkotlin/reflect/jvm/internal/impl/name/f;->g(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v21

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    .line 21
    invoke-static/range {v17 .. v23}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g0;->N0(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/name/f;ILkotlin/reflect/jvm/internal/impl/storage/m;)Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    move-result-object v1

    .line 22
    invoke-static {v1}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->J0(Ljava/util/List;)V

    .line 24
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->G0()V

    .line 25
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/i;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/name/c;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/h;->g:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/h;->f:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/types/a0;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 12

    const-string v0, "suspendFunType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->o(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v1

    .line 3
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v2

    .line 4
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v3

    .line 5
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->j(Lkotlin/reflect/jvm/internal/impl/types/a0;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/s0;

    .line 9
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v5

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/i;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/i;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p1

    :goto_1
    move-object v6, p1

    const-string p1, "if (isReleaseCoroutines)\u2026ERIMENTAL.typeConstructor"

    .line 13
    invoke-static {v6, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->i(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    .line 15
    invoke-static/range {v5 .. v11}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/g;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    .line 16
    invoke-static {v4, p1}, Lkotlin/collections/s;->y0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 17
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->I()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v6

    const-string p1, "suspendFunType.builtIns.nullableAnyType"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x40

    .line 18
    invoke-static/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->b(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/a0;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/a0;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->J0()Z

    move-result p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method
