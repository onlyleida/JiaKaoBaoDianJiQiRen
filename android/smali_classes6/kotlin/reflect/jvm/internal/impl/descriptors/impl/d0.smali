.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/n0;


# direct methods
.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    invoke-direct/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/u;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_1
    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_2
    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_3
    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_4
    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0
.end method

.method public static h1(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V

    return-object v0

    :cond_0
    const/16 p0, 0x9

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_1
    const/16 p0, 0x8

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_2
    const/4 p0, 0x7

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_3
    const/4 p0, 0x6

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_4
    const/4 p0, 0x5

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0
.end method

.method private static synthetic w(I)V
    .locals 11

    const/16 v0, 0x18

    const/16 v1, 0x17

    const/16 v2, 0x12

    const/16 v3, 0x11

    const/16 v4, 0xd

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v6, 0x2

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_1
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_2
    aput-object v8, v7, v9

    goto :goto_2

    :pswitch_3
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_4
    const-string v10, "unsubstitutedValueParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_5
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_6
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_7
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_8
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_9
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_2
    const-string v9, "initialize"

    const/4 v10, 0x1

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v8, v7, v10

    goto :goto_3

    :cond_2
    const-string v8, "newCopyBuilder"

    aput-object v8, v7, v10

    goto :goto_3

    :cond_3
    const-string v8, "copy"

    aput-object v8, v7, v10

    goto :goto_3

    :cond_4
    const-string v8, "getOriginal"

    aput-object v8, v7, v10

    goto :goto_3

    :cond_5
    aput-object v9, v7, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_a
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_b
    aput-object v9, v7, v6

    goto :goto_4

    :pswitch_c
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_4
    :pswitch_d
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic G0(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/u;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->g1(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object p1

    return-object p1
.end method

.method protected H0(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/u;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;

    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p4

    :goto_0
    move-object v5, p4

    move-object v1, v0

    move-object v2, p1

    move-object v4, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V

    return-object v0

    :cond_1
    const/16 p1, 0x16

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_2
    const/16 p1, 0x15

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_3
    const/16 p1, 0x14

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_4
    const/16 p1, 0x13

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0
.end method

.method public bridge synthetic N(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->g1(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic N0(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->j1(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->i1()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->i1()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->i1()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/u;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->i1()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object v0

    return-object v0
.end method

.method public g1(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/n0;
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->G0(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x17

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic h0()Lkotlin/reflect/jvm/internal/impl/descriptors/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->i1()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    move-result-object v0

    return-object v0
.end method

.method public i1()Lkotlin/reflect/jvm/internal/impl/descriptors/n0;
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public j1(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m0;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/v0;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p7, :cond_1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1
    invoke-virtual/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->k1(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/16 v1, 0xd

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_1
    const/16 v1, 0xc

    .line 2
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_2
    const/16 v1, 0xb

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_3
    const/16 v1, 0xa

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0
.end method

.method public k1(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m0;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/v0;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s;",
            "Ljava/util/Map<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "*>;*>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p7, :cond_1

    .line 1
    invoke-super/range {p0 .. p7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->N0(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    if-eqz p8, :cond_0

    .line 2
    invoke-interface {p8}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p8}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->C:Ljava/util/Map;

    :cond_0
    return-object p0

    :cond_1
    const/16 p1, 0x10

    .line 4
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_2
    const/16 p1, 0xf

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0

    :cond_3
    const/16 p1, 0xe

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    throw v0
.end method

.method public s()Lkotlin/reflect/jvm/internal/impl/descriptors/u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/u$a<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/n0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->s()Lkotlin/reflect/jvm/internal/impl/descriptors/u$a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x18

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d0;->w(I)V

    const/4 v0, 0x0

    throw v0
.end method
