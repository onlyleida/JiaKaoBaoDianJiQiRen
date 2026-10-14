.class Lcn/mucang/jiakaoyi/uilib/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/e;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 7

    const-wide/16 v0, 0x1388

    const/4 v2, 0x5

    const/16 v3, 0xf

    .line 1
    :try_start_0
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/i/e;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/i/e;-><init>()V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/i/e;->r(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/e;->D(Lcn/mucang/jiakaoyi/uilib/e;)I

    .line 3
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/e;->C(Lcn/mucang/jiakaoyi/uilib/e;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 4
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/e;->C(Lcn/mucang/jiakaoyi/uilib/e;)I

    move-result v4

    if-ge v4, v2, :cond_0

    .line 5
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/e;->A(Lcn/mucang/jiakaoyi/uilib/e;J)J

    goto :goto_0

    .line 6
    :cond_0
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/e;->A(Lcn/mucang/jiakaoyi/uilib/e;J)J

    .line 7
    :goto_0
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/e;->B(Lcn/mucang/jiakaoyi/uilib/e;)Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/e;->D(Lcn/mucang/jiakaoyi/uilib/e;)I

    .line 10
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/e;->C(Lcn/mucang/jiakaoyi/uilib/e;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 11
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/e;->C(Lcn/mucang/jiakaoyi/uilib/e;)I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 12
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/e;->A(Lcn/mucang/jiakaoyi/uilib/e;J)J

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/e;->A(Lcn/mucang/jiakaoyi/uilib/e;J)J

    .line 14
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/e;->B(Lcn/mucang/jiakaoyi/uilib/e;)Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/e$a;->a()V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/e;->z(Lcn/mucang/jiakaoyi/uilib/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$a;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/e;->B(Lcn/mucang/jiakaoyi/uilib/e;)Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 5
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/a;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/a;-><init>(Lcn/mucang/jiakaoyi/uilib/e$a;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
