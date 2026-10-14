.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/y;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/w;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/unity/c/d;->r()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/a;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->f(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;Z)V

    return-void
.end method
