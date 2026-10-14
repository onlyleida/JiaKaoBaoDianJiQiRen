.class public final Lcn/mucang/android/core/config/mapping/h;
.super Lcn/mucang/android/core/api/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0014J\u001b\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u0003H\u0014J\u0006\u0010\u000f\u001a\u00020\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/core/config/mapping/ProfileAdminApi;",
        "Lcn/mucang/android/core/api/BaseApi;",
        "token",
        "",
        "(Ljava/lang/String;)V",
        "getToken",
        "()Ljava/lang/String;",
        "getApiHost",
        "getProfileList",
        "",
        "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
        "id",
        "",
        "(Ljava/lang/Long;)Ljava/util/List;",
        "getSignKey",
        "isTokenValid",
        "",
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


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/a;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/config/mapping/h;->a:Ljava/lang/String;

    .line 2
    new-instance p1, Lcn/mucang/android/core/config/mapping/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/config/mapping/a;-><init>(Lcn/mucang/android/core/config/mapping/h;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/a;->addRequestInterceptor(Lcn/mucang/android/core/api/request/d/a;)V

    return-void
.end method

.method private static final b(Lcn/mucang/android/core/config/mapping/h;Lcn/mucang/android/core/api/request/c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/config/mapping/h;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "X-SSO-Token"

    invoke-virtual {p1, v0, p0}, Lcn/mucang/android/core/api/request/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    const-string p0, "X-Requested-With"

    const-string v0, "XMLHttpRequest"

    .line 2
    invoke-virtual {p1, p0, v0}, Lcn/mucang/android/core/api/request/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/c;

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/core/config/mapping/h;Lcn/mucang/android/core/api/request/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/config/mapping/h;->b(Lcn/mucang/android/core/config/mapping/h;Lcn/mucang/android/core/api/request/c;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Long;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "/api/admin/app/my-url-mapping-list.htm?id="

    .line 2
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    .line 3
    invoke-virtual {p0, p1, v1}, Lcn/mucang/android/core/api/a;->httpGetDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    const-class p1, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    const-string v1, "/api/admin/app/my-url-mapping-list.htm"

    .line 6
    invoke-virtual {p0, v1, p1}, Lcn/mucang/android/core/api/a;->httpGetDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/core/config/mapping/ProfileJsonData;

    .line 12
    invoke-virtual {v3}, Lcn/mucang/android/core/config/mapping/ProfileJsonData;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 13
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/config/mapping/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const-string v0, "/api/admin/app/check.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/a;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result v0

    return v0
.end method

.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://sentinel.mucang.cn/sso-sentinel"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
