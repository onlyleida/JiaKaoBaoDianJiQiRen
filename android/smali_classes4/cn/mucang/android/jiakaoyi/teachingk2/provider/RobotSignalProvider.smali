.class public final Lcn/mucang/android/jiakaoyi/teachingk2/provider/RobotSignalProvider;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/provider/RobotSignalProvider;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;",
        "args",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "getComProvider",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/ComProviderWrap;",
        "useNonOldProtocol",
        "",
        "appteachk2_release"
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
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getComProvider()Lcn/mucang/android/jiakaoyi/signal/communicate/p;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/p;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/d;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/d;-><init>()V

    const-string v2, "\u673a\u5668\u4eba\u8fde\u63a5\u5668"

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/p;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;)V

    return-object v0
.end method

.method public useNonOldProtocol()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
