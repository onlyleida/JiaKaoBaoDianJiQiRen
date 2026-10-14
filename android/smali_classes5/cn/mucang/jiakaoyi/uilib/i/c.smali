.class public final Lcn/mucang/jiakaoyi/uilib/i/c;
.super Lcn/mucang/android/jiakaoyi/framework/e/n;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0008\u0010\u0008\u001a\u00020\u0004H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/api/DebugToolsApi;",
        "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;",
        "()V",
        "getApiHost",
        "",
        "getDebugTools",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;",
        "getSignKey",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected getApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://device-administration.ttt.mucang.cn"

    goto :goto_0

    :cond_0
    const-string v0, "https://device-administration.kakamobi.cn"

    :goto_0
    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#fEeHh0aIcG1Fd3GIbJJFqESX"

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    const-string v0, "/api/open/debug-tool-management/list.htm"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    .line 2
    const-class v1, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;

    const-string v2, "data"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/api/ApiResponse;->getDataArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const-string v1, "httpGet(\"/api/open/debug\u2026tem::class.java\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
