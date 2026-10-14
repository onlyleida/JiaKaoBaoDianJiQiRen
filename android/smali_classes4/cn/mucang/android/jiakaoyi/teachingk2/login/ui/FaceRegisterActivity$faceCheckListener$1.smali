.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;
.super Lcn/mucang/jiakaoyi/uilib/login/face/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J \u0010\r\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1",
        "Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;",
        "onBrightness",
        "",
        "brightness",
        "",
        "onCheckFace",
        "pos",
        "Lorg/opencv/core/Rect;",
        "landmark",
        "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;",
        "width",
        "height",
        "onCheckFarFace",
        "onCheckNoFace",
        "onCheckSuitableFace",
        "onSuccess",
        "face",
        "Landroid/graphics/Bitmap;",
        "result",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;",
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


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/opencv/core/Rect;II)V
    .locals 0

    const-string p2, "pos"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V
    .locals 0

    const-string p3, "pos"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "landmark"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public g(Lorg/opencv/core/Rect;)V
    .locals 1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 8

    const-string v0, "face"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/facelib/v;->k(Landroid/graphics/Bitmap;Z)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/facelib/y/e$a;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/facelib/y/e$a;->a()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_1
    instance-of v2, p1, [[F

    if-eqz v2, :cond_2

    check-cast p1, [[F

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_3

    move-object v5, v1

    goto :goto_3

    .line 4
    :cond_3
    aget-object p1, p1, v0

    move-object v5, p1

    :goto_3
    if-nez v5, :cond_4

    goto/16 :goto_7

    .line 5
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez v2, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto/16 :goto_7

    .line 7
    :cond_6
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "\u89d2\u5ea6\uff1a"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "www"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)Lcn/mucang/jiakaoyi/uilib/login/o/b;

    move-result-object v2

    .line 10
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v4

    const-string v6, "standard"

    const-string v7, "123456"

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/jiakaoyi/uilib/login/o/b;->q(Ljava/lang/String;F[FLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    :goto_4
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v2, v1

    :cond_7
    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_8

    goto :goto_5

    .line 14
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_a

    .line 15
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "\u4eba\u8138\u6ce8\u518c\u6210\u529f, \u89d2\u5ea6\uff1a"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 16
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_face_register_success:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 17
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l0()V

    .line 18
    :goto_6
    invoke-static {p1}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1$onSuccess$1$1$1;

    invoke-direct {v5, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1$onSuccess$1$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_a
    :goto_7
    return-void
.end method
