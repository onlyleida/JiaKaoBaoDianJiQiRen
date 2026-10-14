.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;
    }
.end annotation


# instance fields
.field private final i:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

.field private final j:Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

.field private final k:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field private final l:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

.field private final m:Lkotlin/f;

.field private final n:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

.field private final o:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private final p:Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

.field private final q:Z

.field private final r:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

.field private final s:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

.field private final t:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;

.field private final v:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

.field private final w:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

.field private final x:Lkotlin/reflect/jvm/internal/impl/storage/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/h<",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "getClass"

    const-string v3, "wait"

    const-string v4, "notify"

    const-string v5, "notifyAll"

    const-string v6, "toString"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s0;->f([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
    .locals 12

    move-object v8, p0

    move-object v6, p1

    move-object v9, p3

    move-object/from16 v7, p4

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->e()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v1

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/t;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->t()Lkotlin/reflect/jvm/internal/impl/load/java/w/b;

    move-result-object v0

    invoke-interface {v0, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/w/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/l;)Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;Z)V

    .line 5
    iput-object v6, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    .line 6
    iput-object v9, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    .line 7
    iput-object v7, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->d(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Lkotlin/reflect/jvm/internal/impl/load/java/structure/z;IILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    move-result-object v10

    iput-object v10, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    .line 9
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->h()Lkotlin/reflect/jvm/internal/impl/load/java/components/d;

    move-result-object v0

    invoke-interface {v0, p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/d;->e(Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    .line 10
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->J()Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;

    move-result-object v0

    .line 11
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$moduleAnnotations$2;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$moduleAnnotations$2;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->m:Lkotlin/f;

    .line 12
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    goto :goto_0

    .line 15
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 16
    :goto_0
    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    .line 17
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->o()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 18
    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality$a;

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->x()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/s;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->I()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/s;->isFinal()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality$a;->a(ZZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v0

    goto :goto_4

    .line 19
    :cond_6
    :goto_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    :goto_4
    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 20
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/s;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    move-result-object v0

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    .line 21
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->l()Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/s;->O()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->q:Z

    .line 22
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->r:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

    .line 23
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    if-eqz v7, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, v10

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;ILkotlin/jvm/internal/o;)V

    iput-object v11, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->s:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 24
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass$a;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->e()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v1

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->k()Lkotlin/reflect/jvm/internal/impl/types/checker/k;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/k;->c()Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    move-result-object v2

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$scopeHolder$1;

    invoke-direct {v3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$scopeHolder$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/types/checker/g;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    move-result-object v0

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->t:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    .line 25
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;

    invoke-direct {v0, v11}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->u:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;

    .line 26
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    invoke-direct {v0, v10, p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->v:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    .line 27
    invoke-static {v10, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/structure/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    .line 28
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->e()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$declaredParameters$1;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$declaredParameters$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/m;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/h;

    move-result-object v0

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->x:Lkotlin/reflect/jvm/internal/impl/storage/h;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    return-void
.end method

.method public static final synthetic G0(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p0
.end method

.method public static final synthetic H0(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    return-object p0
.end method

.method public static final synthetic I0(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->s:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    return-object p0
.end method


# virtual methods
.method public C()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final J0(Lkotlin/reflect/jvm/internal/impl/load/java/components/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;
    .locals 3

    const-string v0, "javaResolverCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->x(Lkotlin/reflect/jvm/internal/impl/load/java/components/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/ContextKt;->j(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    .line 4
    invoke-direct {v0, p1, v1, v2, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    return-object v0
.end method

.method public K0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->s:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->w0()Lkotlin/reflect/jvm/internal/impl/storage/h;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final L0()Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    return-object v0
.end method

.method public final M0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->m:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final N0()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    return-object v0
.end method

.method public O0()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->U()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    return-object v0
.end method

.method protected P0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->t:Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->c(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    return-object p1
.end method

.method public S()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->u:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;

    return-object v0
.end method

.method public bridge synthetic U()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->O0()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    move-result-object v0

    return-object v0
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic e0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->P0(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    move-result-object p1

    return-object p1
.end method

.method public g()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object v0
.end method

.method public g0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->l()Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string v1, "{\n            JavaDescri\u2026KAGE_VISIBILITY\n        }"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Lkotlin/reflect/jvm/internal/impl/types/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->r:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor;

    return-object v0
.end method

.method public i0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic j()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->K0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->v:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;

    return-object v0
.end method

.method public l0()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->x:Lkotlin/reflect/jvm/internal/impl/storage/h;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public q()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object v0
.end method

.method public t()Lkotlin/reflect/jvm/internal/impl/descriptors/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/v<",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/name/d;

    move-result-object v0

    const-string v1, "Lazy Java class "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-ne v0, v1, :cond_2

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/b;->d(Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/descriptors/t0;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->B()Ljava/util/Collection;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;

    .line 7
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v4

    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v5, :cond_1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_0

    .line 8
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->q:Z

    return v0
.end method
