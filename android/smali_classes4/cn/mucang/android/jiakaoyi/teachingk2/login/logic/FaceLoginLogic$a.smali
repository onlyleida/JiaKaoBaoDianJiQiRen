.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;
.super Lcn/mucang/jiakaoyi/uilib/login/face/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
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
        "cn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$faceCheckListener$1",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/opencv/core/Rect;II)V
    .locals 2

    const-string p2, "pos"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->FAR_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->q(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;J)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->s(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V
    .locals 0

    const-string p4, "pos"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "landmark"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->borderView:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;->a(Lorg/opencv/core/Rect;I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->l(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Lkotlinx/coroutines/t1;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    invoke-static {p1, p2, p3, p2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->p(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlinx/coroutines/t1;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->NO_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_checking:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "getString(R.string.teachbase_checking)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->s(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->o(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;J)V

    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->l(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Lkotlinx/coroutines/t1;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->p(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlinx/coroutines/t1;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->NO_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->s(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->FAR_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7530

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->o(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;J)V

    :cond_2
    return-void
.end method

.method public g(Lorg/opencv/core/Rect;)V
    .locals 2

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->FAR_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_checking:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_checking)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->s(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 1

    const-string v0, "face"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
