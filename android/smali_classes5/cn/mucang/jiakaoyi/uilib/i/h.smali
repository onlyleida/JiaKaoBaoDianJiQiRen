.class public Lcn/mucang/jiakaoyi/uilib/i/h;
.super Lcn/mucang/android/core/api/cache/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/b;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/e/r/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/e/r/c;-><init>()V

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/api/a;->addResponseInterceptor(Lcn/mucang/android/core/api/request/d/b;)V

    return-void
.end method


# virtual methods
.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://lukaoyi.ttt.mucang.cn"

    return-object v0

    :cond_0
    const-string v0, "https://lukaoyi.kakamobi.cn"

    return-object v0
.end method

.method protected getExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/g;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#iJejkYeMfUWcmnNzhZaQh4aT"

    return-object v0
.end method
