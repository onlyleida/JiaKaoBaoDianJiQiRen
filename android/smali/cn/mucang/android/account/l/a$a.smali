.class Lcn/mucang/android/account/l/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/l/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/mucang/android/account/l/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "authUser"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v2, v1}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    :try_start_0
    const-class v0, Lcn/mucang/android/account/api/data/UserInfoResponse;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/api/data/UserInfoResponse;

    .line 5
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/AccountManager;->y(Lcn/mucang/android/account/data/AuthUser;)V

    const/4 p1, 0x0

    .line 6
    invoke-static {p1, v2}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "WebProtocolManager"

    const-string v0, "web login register loinsuccess params is error"

    .line 7
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v2, v1}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
