.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "argumentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    move-object v2, p1

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/s;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/s0;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v2

    const-string v4, "type.arguments.single().type"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v2

    .line 5
    instance-of v4, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v4, :cond_3

    .line 6
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    invoke-direct {v1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/name/b;I)V

    goto :goto_1

    .line 8
    :cond_3
    instance-of p1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    if-eqz p1, :cond_4

    .line 9
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/h$a;->b:Lkotlin/reflect/jvm/internal/impl/name/d;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/d;->l()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/b;->m(Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object p1

    const-string v2, "topLevel(StandardNames.FqNames.any.toSafe())"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/name/b;I)V

    :cond_4
    :goto_1
    return-object v1
.end method
