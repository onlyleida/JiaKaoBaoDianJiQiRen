.class public final Lcn/mucang/android/account/third/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tJ\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/account/third/LoginPlatforms;",
        "",
        "()V",
        "QQ",
        "",
        "WECHAT",
        "XIAOMI",
        "platforms",
        "",
        "Lcn/mucang/android/account/third/LoginPlatform;",
        "getPlatform",
        "thirdPartyValue",
        "registerPlatform",
        "",
        "platform",
        "requirePlatform",
        "Platform",
        "account_release"
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
.field public static final a:Lcn/mucang/android/account/third/v;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/account/third/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/account/third/v;

    invoke-direct {v0}, Lcn/mucang/android/account/third/v;-><init>()V

    sput-object v0, Lcn/mucang/android/account/third/v;->a:Lcn/mucang/android/account/third/v;

    .line 1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcn/mucang/android/account/third/v;->b:Ljava/util/Map;

    .line 2
    new-instance v1, Lcn/mucang/android/account/third/w;

    invoke-direct {v1}, Lcn/mucang/android/account/third/w;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/third/v;->b(Lcn/mucang/android/account/third/u;)V

    .line 3
    new-instance v1, Lcn/mucang/android/account/third/a0;

    invoke-direct {v1}, Lcn/mucang/android/account/third/a0;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/third/v;->b(Lcn/mucang/android/account/third/u;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcn/mucang/android/account/third/u;
    .locals 1

    const-string v0, "thirdPartyValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/account/third/v;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/third/u;

    return-object p1
.end method

.method public final b(Lcn/mucang/android/account/third/u;)V
    .locals 3

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/account/third/v;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcn/mucang/android/account/third/u;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform.thirdPartyValue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcn/mucang/android/account/third/u;
    .locals 2

    const-string v0, "thirdPartyValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/account/third/v;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/third/u;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u627e\u4e0d\u5230\u6307\u5b9a\u7684\u767b\u5f55\u5e73\u53f0\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
