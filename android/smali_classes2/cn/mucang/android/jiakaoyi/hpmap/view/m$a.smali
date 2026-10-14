.class Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/hpmap/view/m;->t()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->b(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->d(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->isShown()Z

    move-result p1

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->d(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getWindowVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->c(Lcn/mucang/android/jiakaoyi/hpmap/view/m;Z)Z

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/m$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)V

    :cond_2
    const-wide/16 v1, 0x8

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
