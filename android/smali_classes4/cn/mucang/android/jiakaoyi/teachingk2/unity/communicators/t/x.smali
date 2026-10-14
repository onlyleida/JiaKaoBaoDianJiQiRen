.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u6ca1\u6709\u8f66\u8eab\u6570\u636e"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->sameWith(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->b()V

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    invoke-direct {v2, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->g()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    :cond_0
    return-void
.end method
