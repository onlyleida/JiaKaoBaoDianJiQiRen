.class public Lcn/mucang/sundial/library/http/SundialNormalApi;
.super Lcn/mucang/android/core/api/cache/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcn/mucang/sundial/library/http/SundialNormalApi;",
        "Lcn/mucang/android/core/api/cache/b;",
        "",
        "getApiHost",
        "()Ljava/lang/String;",
        "getSignKey",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/cache/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected getApiHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://sundial-app.jiakaobaodian.com"

    return-object v0
.end method

.method protected getSignKey()Ljava/lang/String;
    .locals 1

    const-string v0, "*#06#PXJCg3xJmYiPpoOPhnKYmW5u"

    return-object v0
.end method
