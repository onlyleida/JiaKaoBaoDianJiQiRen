.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/assist/intercept/GpsErrorHandler$comConnectStateListener$1",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/IComConnectListener;",
        "onConnected",
        "",
        "comName",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;",
        "onDisConnected",
        "teachbase_release"
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
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 1

    const-string v0, "comName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->GpsNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;

    const/4 p1, 0x0

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->c(Z)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->a()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 2

    const-string v0, "comName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->GpsNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;

    const/4 p1, 0x1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->c(Z)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->a()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
