.class public Lcn/mucang/jiakaoyi/uilib/i/i;
.super Lcn/mucang/android/core/api/cache/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0014J\u001a\u0010\u0005\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0006H\u0014J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/api/JResponseCacheApi;",
        "Lcn/mucang/android/core/api/cache/CacheBaseApi;",
        "()V",
        "getApiHost",
        "",
        "getExtraParams",
        "",
        "getSignKey",
        "Companion",
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


# static fields
.field private static final a:Lcn/mucang/android/jiakaoyi/framework/e/r/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/e/r/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/e/r/c;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/i/i;->a:Lcn/mucang/android/jiakaoyi/framework/e/r/c;

    .line 2
    sget-object v1, Lcn/mucang/android/core/api/request/b;->a:Lcn/mucang/android/core/api/request/b;

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/api/request/b;->b(Lcn/mucang/android/core/api/request/d/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/b;-><init>()V

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

    goto :goto_0

    :cond_0
    const-string v0, "https://lukaoyi.kakamobi.cn"

    :goto_0
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
