.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h0;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 6
    :cond_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h0;->a:Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p2, 0x10

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 7
    :cond_3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h0;->a:Z

    .line 8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6d88\u606f0x24\uff0c\u54cd\u5e94"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h0;->a:Z

    if-eqz p2, :cond_4

    const-string p2, "\u6210\u529f"

    goto :goto_1

    :cond_4
    const-string p2, "\u5931\u8d25"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method
