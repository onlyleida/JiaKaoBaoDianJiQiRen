.class public final Lcn/mucang/android/core/config/mapping/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007J\r\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011H\u0007J\u0008\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0015\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0018J \u0010\u0019\u001a\u00020\u00132\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/core/config/mapping/ProfileStorage;",
        "",
        "()V",
        "KEY_PROFILE_ID_SP_NAME",
        "",
        "cache",
        "Ljava/util/ArrayList;",
        "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
        "Lkotlin/collections/ArrayList;",
        "profileStorage",
        "Lcn/mucang/android/core/storage/EncryptionStorage;",
        "tokenStorage",
        "getCurrentProfile",
        "getCurrentProfileIdFromSp",
        "",
        "()Ljava/lang/Long;",
        "getProfiles",
        "",
        "init",
        "",
        "removeSuffix",
        "str",
        "setCurrentProfileId",
        "id",
        "(Ljava/lang/Long;)V",
        "updateProfiles",
        "profiles",
        "token",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/core/config/mapping/k;

.field private static final b:Lf/a/a/a/r/b;

.field private static final c:Lf/a/a/a/r/b;

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcn/mucang/android/core/config/mapping/k;

    invoke-direct {v0}, Lcn/mucang/android/core/config/mapping/k;-><init>()V

    sput-object v0, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    .line 1
    new-instance v0, Lf/a/a/a/r/b;

    new-instance v1, Lf/a/a/a/r/g;

    const-string v2, "__core_profile_list__"

    invoke-direct {v1, v2}, Lf/a/a/a/r/g;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lf/a/a/a/r/b;-><init>(Lf/a/a/a/r/h;Lf/a/a/a/r/a;ILkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/core/config/mapping/k;->b:Lf/a/a/a/r/b;

    .line 2
    new-instance v0, Lf/a/a/a/r/b;

    new-instance v1, Lf/a/a/a/r/g;

    const-string v4, "__core_profile_token__"

    invoke-direct {v1, v4}, Lf/a/a/a/r/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v2}, Lf/a/a/a/r/b;-><init>(Lf/a/a/a/r/h;Lf/a/a/a/r/a;ILkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/core/config/mapping/k;->c:Lf/a/a/a/r/b;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/core/config/mapping/k;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/mapping/k;->d:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/config/mapping/k;->b:Lf/a/a/a/r/b;

    invoke-virtual {v1}, Lf/a/a/a/r/b;->get()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final d()V
    .locals 1

    sget-object v0, Lcn/mucang/android/core/config/mapping/g;->a:Lcn/mucang/android/core/config/mapping/g;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final e()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/mapping/k;->c:Lf/a/a/a/r/b;

    invoke-virtual {v0}, Lf/a/a/a/r/b;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    sget-object v0, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcn/mucang/android/core/config/mapping/k;->i(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 5
    new-instance v1, Lcn/mucang/android/core/config/mapping/h;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/config/mapping/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/android/core/config/mapping/h;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v1, Lcn/mucang/android/core/config/mapping/h;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/config/mapping/h;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    invoke-virtual {v2}, Lcn/mucang/android/core/config/mapping/k;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/core/config/mapping/h;->c(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {v2, v1, v0}, Lcn/mucang/android/core/config/mapping/k;->i(Ljava/util/List;Ljava/lang/String;)V

    .line 8
    :cond_3
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/core/config/mapping/k;->e()V

    return-void
.end method

.method private final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/l;->o(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a()Lcn/mucang/android/core/config/mapping/ProfileJsonData;
    .locals 10

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/mapping/k;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/config/mapping/k;->b()Ljava/lang/Long;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    .line 4
    invoke-virtual {v5}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getId()J

    move-result-wide v5

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    check-cast v3, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    if-nez v3, :cond_6

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    .line 6
    invoke-virtual {v3}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "product"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v4, v2

    :cond_5
    move-object v3, v4

    check-cast v3, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    if-nez v3, :cond_6

    invoke-static {v0}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    :cond_6
    return-object v3
.end method

.method public final b()Ljava/lang/Long;
    .locals 3

    const-string v0, "__core_profile_id__"

    const-string v1, "currentProfileId"

    const-string v2, ""

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lkotlin/text/l;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "__core_profile_id__"

    const-string v1, "currentProfileId"

    .line 2
    invoke-static {v0, v1, p1}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_7

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_3

    .line 2
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getList()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;

    .line 5
    sget-object v3, Lcn/mucang/android/core/config/mapping/k;->a:Lcn/mucang/android/core/config/mapping/k;

    invoke-virtual {v2}, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/mucang/android/core/config/mapping/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/mucang/android/core/config/mapping/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/core/config/mapping/ProfileHostJsonData;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_6
    sget-object v0, Lcn/mucang/android/core/config/mapping/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    sget-object v0, Lcn/mucang/android/core/config/mapping/k;->b:Lf/a/a/a/r/b;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/a/a/a/r/b;->b(Ljava/lang/String;)Z

    .line 10
    sget-object p1, Lcn/mucang/android/core/config/mapping/k;->c:Lf/a/a/a/r/b;

    invoke-virtual {p1, p2}, Lf/a/a/a/r/b;->b(Ljava/lang/String;)Z

    return-void

    .line 11
    :cond_7
    :goto_3
    sget-object p1, Lcn/mucang/android/core/config/mapping/k;->b:Lf/a/a/a/r/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lf/a/a/a/r/b;->b(Ljava/lang/String;)Z

    .line 12
    sget-object p1, Lcn/mucang/android/core/config/mapping/k;->c:Lf/a/a/a/r/b;

    invoke-virtual {p1, p2}, Lf/a/a/a/r/b;->b(Ljava/lang/String;)Z

    return-void
.end method
