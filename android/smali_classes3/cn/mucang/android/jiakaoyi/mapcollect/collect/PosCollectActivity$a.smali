.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->h(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->i(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->c(Z)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->j(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/j;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    :goto_1
    return-void
.end method
