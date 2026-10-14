.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;,
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

.field private final c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;)V
    .locals 1

    const-string v0, "annotationTypeQualifierResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeEnhancement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->b:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    .line 4
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;)Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

    return-object p0
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->b:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->c()Lkotlin/jvm/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    .line 2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->isIgnore()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->isWarning()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 4
    :goto_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto/16 :goto_2

    .line 5
    :cond_3
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto/16 :goto_2

    .line 6
    :cond_4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->g()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto :goto_2

    .line 7
    :cond_5
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->h()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto :goto_2

    .line 8
    :cond_6
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->f()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object v2

    goto :goto_2

    .line 9
    :cond_7
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->d()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 10
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto :goto_2

    .line 11
    :cond_8
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->c()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto :goto_2

    .line 13
    :cond_9
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->a()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 14
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 15
    invoke-direct {v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto :goto_2

    .line 16
    :cond_a
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/s;->b()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 17
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 18
    invoke-direct {v2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    :cond_b
    :goto_2
    return-object v2
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ">(TD;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;",
            ")TD;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/a;

    if-nez v0, :cond_0

    return-object v8

    .line 2
    :cond_0
    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/a;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->g()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v10, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v10, :cond_1

    return-object v8

    .line 3
    :cond_1
    invoke-direct/range {p0 .. p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->h(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    move-result-object v4

    .line 4
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/e;

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    move-object v0, v8

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->M0()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a0;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;->E()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->M0()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, "getter!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    goto :goto_1

    :cond_4
    move-object v12, v8

    .line 6
    :goto_1
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->O()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v0, :cond_7

    .line 7
    instance-of v0, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    if-nez v0, :cond_5

    move-object v0, v13

    goto :goto_2

    :cond_5
    move-object v0, v12

    :goto_2
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    if-nez v0, :cond_6

    move-object v0, v13

    goto :goto_3

    .line 8
    :cond_6
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->F:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->s0(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/v0;

    .line 9
    :goto_3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$receiverTypeEnhancement$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$receiverTypeEnhancement$1;

    invoke-direct {v7, v8, v0, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->m(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/v0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;

    move-result-object v0

    .line 10
    invoke-static {v0, v13, v10, v13}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;->h(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;

    move-result-object v0

    move-object v14, v0

    goto :goto_4

    :cond_7
    move-object v14, v13

    .line 11
    :goto_4
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    if-eqz v0, :cond_8

    move-object v0, v8

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    goto :goto_5

    :cond_8
    move-object v0, v13

    :goto_5
    if-nez v0, :cond_9

    :goto_6
    move-object v15, v13

    goto :goto_7

    .line 12
    :cond_9
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/j;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v3, 0x3

    invoke-static {v0, v11, v11, v3, v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/u;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_6

    .line 13
    :cond_a
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-object v15, v0

    :goto_7
    if-nez v15, :cond_b

    goto :goto_8

    .line 14
    :cond_b
    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 15
    :goto_8
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v0

    const-string v1, "annotationOwnerForMember.valueParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/v0;

    .line 19
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$valueParameterEnhancements$1$1;

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$valueParameterEnhancements$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/v0;)V

    invoke-direct {v7, v8, v1, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->m(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/v0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;

    move-result-object v2

    if-nez v15, :cond_c

    :goto_a
    move-object v1, v13

    goto :goto_b

    .line 20
    :cond_c
    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_a

    :cond_d
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/v0;->h()I

    move-result v1

    invoke-static {v3, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;

    :goto_b
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;->f(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    const/4 v3, 0x1

    .line 21
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    if-nez v0, :cond_f

    move-object v0, v13

    goto :goto_c

    :cond_f
    move-object v0, v8

    :goto_c
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    if-nez v0, :cond_11

    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    .line 22
    :cond_11
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/j0;)Z

    move-result v0

    if-ne v0, v10, :cond_10

    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_12

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->FIELD:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    goto :goto_e

    .line 24
    :cond_12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->METHOD_RETURN_TYPE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    :goto_e
    move-object/from16 v16, v0

    .line 25
    sget-object v17, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$returnTypeEnhancement$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceSignature$returnTypeEnhancement$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    const/16 v11, 0xa

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->l(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;

    move-result-object v0

    if-nez v15, :cond_13

    move-object v1, v13

    goto :goto_f

    .line 26
    :cond_13
    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->b()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;

    move-result-object v1

    :goto_f
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;->f(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;

    move-result-object v0

    if-nez v14, :cond_15

    :cond_14
    const/4 v1, 0x0

    goto :goto_10

    .line 27
    :cond_15
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->a()Z

    move-result v1

    if-ne v1, v10, :cond_14

    const/4 v1, 0x1

    :goto_10
    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->a()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 28
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const/4 v1, 0x0

    goto :goto_11

    .line 29
    :cond_17
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;

    .line 30
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    :goto_11
    if-eqz v1, :cond_19

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    goto :goto_13

    :cond_1a
    :goto_12
    const/4 v1, 0x1

    :goto_13
    if-nez v14, :cond_1c

    :cond_1b
    const/4 v2, 0x0

    goto :goto_14

    .line 31
    :cond_1c
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->c()Z

    move-result v2

    if-ne v2, v10, :cond_1b

    const/4 v2, 0x1

    :goto_14
    if-nez v2, :cond_21

    .line 32
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->c()Z

    move-result v2

    if-nez v2, :cond_21

    .line 33
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    const/4 v10, 0x0

    goto :goto_15

    .line 34
    :cond_1e
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;

    .line 35
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->c()Z

    move-result v3

    if-eqz v3, :cond_1f

    :goto_15
    if-nez v10, :cond_21

    if-eqz v1, :cond_20

    goto :goto_16

    :cond_20
    return-object v8

    :cond_21
    :goto_16
    if-eqz v1, :cond_22

    .line 36
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/m/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/e;

    invoke-direct {v2, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/e;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)V

    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_17

    :cond_22
    move-object v1, v13

    :goto_17
    if-nez v14, :cond_23

    move-object v2, v13

    goto :goto_18

    .line 37
    :cond_23
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->b()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v2

    .line 38
    :goto_18
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v4, v16

    invoke-static {v4, v11}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v11, 0x0

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v11, 0x1

    if-ltz v11, :cond_24

    .line 40
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;

    .line 41
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/h;

    .line 42
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->b()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v5

    .line 43
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/v0;

    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/v0;->x0()Z

    move-result v10

    .line 44
    invoke-direct {v8, v5, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/h;-><init>(Lkotlin/reflect/jvm/internal/impl/types/a0;Z)V

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v11, v6

    goto :goto_19

    .line 45
    :cond_24
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v13

    .line 46
    :cond_25
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->b()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    .line 47
    invoke-interface {v9, v2, v3, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/a;->X(Lkotlin/reflect/jvm/internal/impl/types/a0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/Pair;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/a;

    move-result-object v0

    return-object v0
.end method

.method private final i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;
    .locals 4

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;->e()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 3
    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;->j()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->c(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v1

    .line 5
    :cond_3
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->d()Z

    move-result p3

    if-nez p3, :cond_4

    .line 6
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/f;

    if-eqz p3, :cond_4

    .line 7
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/f;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/f;->k()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-static {p2, v1, v3, v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->b(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method private final j(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;->c()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "ALWAYS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto :goto_1

    :sswitch_1
    const-string v0, "UNKNOWN"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    goto :goto_1

    :sswitch_2
    const-string v0, "NEVER"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :sswitch_3
    const-string v0, "MAYBE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x45bf448 -> :sswitch_3
        0x46bd26c -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7342860f -> :sswitch_0
    .end sparse-switch
.end method

.method private final k(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ">(TD;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/q;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->M0()Ljava/util/List;

    move-result-object v2

    :goto_1
    const/4 v0, 0x1

    if-eqz v2, :cond_4

    .line 3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    return-object p1

    .line 4
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;

    .line 7
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    invoke-direct {v4, p2, v3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;Z)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 8
    :cond_6
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/collections/s;->v0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    return-object p1
.end method

.method private final l(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;",
            "Z",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    .line 1
    invoke-interface {v1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/a0;

    .line 2
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->d()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "this.overriddenDescriptors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const-string v4, "it"

    .line 6
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/a0;

    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/a0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->h(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xc0

    const/4 v14, 0x0

    .line 8
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;Lkotlin/reflect/jvm/internal/impl/types/a0;Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;ZZILkotlin/jvm/internal/o;)V

    return-object v0
.end method

.method private final m(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/v0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/v0;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->h(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    move-object v5, p3

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 2
    :goto_1
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p4

    .line 3
    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->l(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final e(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformSignatures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 4
    invoke-direct {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final f(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 13

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;

    .line 2
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v5

    .line 3
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x40

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    .line 4
    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;Lkotlin/reflect/jvm/internal/impl/types/a0;Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;ZZILkotlin/jvm/internal/o;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-static {v0, p1, p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;->h(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->b()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "typeParameter"

    move-object/from16 v14, p1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object/from16 v15, p3

    invoke-static {v15, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    move-object v5, v2

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/a0;

    .line 4
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceTypeParameterBounds$1$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$enhanceTypeParameterBounds$1$1;

    invoke-static {v5, v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->b(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/jvm/b/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 p2, v0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;

    .line 6
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    .line 7
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x80

    const/16 v16, 0x0

    move-object v2, v13

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    move-object/from16 p2, v0

    move-object v0, v13

    move-object/from16 v13, v16

    .line 8
    invoke-direct/range {v2 .. v13}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;Lkotlin/reflect/jvm/internal/impl/types/a0;Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;ZZILkotlin/jvm/internal/o;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;->h(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$SignatureParts;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$a;->b()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v5

    :goto_1
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final h(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;
    .locals 3

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->m(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->a:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->isIgnore()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->isWarning()Z

    move-result p1

    const/4 p3, 0x1

    invoke-static {p2, v1, p1, p3, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->b(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    return-object v0
.end method
