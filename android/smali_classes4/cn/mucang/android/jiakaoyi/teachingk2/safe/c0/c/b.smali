.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/a;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/b;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/b;->a:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x2710

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    return v2

    .line 4
    :cond_0
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/b;->a:J

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/b;->a:J

    return v2
.end method
