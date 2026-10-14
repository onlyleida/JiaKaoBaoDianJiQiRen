.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/w;
.source "SourceFile"


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;


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

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/a;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->f(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;Z)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/w;->e()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/z;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;

    return-void
.end method
