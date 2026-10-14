.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;
.super Lcn/mucang/jiakaoyi/uilib/login/face/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\nH\u0016J(\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0016J \u0010\u0014\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\u0008\u0010\u0015\u001a\u00020\u0003H\u0016J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\nH\u0016J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1",
        "Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;",
        "onAngleWrong",
        "",
        "angleX",
        "",
        "angleY",
        "angleZ",
        "onBlurVar",
        "blur",
        "",
        "onBrightness",
        "brightness",
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
        "onHighLight",
        "highLightRate",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

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
    .locals 10

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landmark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;J)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {v0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1$onCheckFace$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1$onCheckFace$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Lkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->box:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;

    invoke-virtual {v0, p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;->a(Lorg/opencv/core/Rect;I)V

    .line 7
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->tvFaceRatio:Landroid/widget/TextView;

    .line 8
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    new-array v0, v2, [Ljava/lang/Object;

    iget p1, p1, Lorg/opencv/core/Rect;->height:I

    int-to-float p1, p1

    int-to-float p4, p4

    div-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p4, "%.2f"

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "java.lang.String.format(format, *args)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "\u5f53\u524d\u4eba\u8138\u5360\u6bd4\uff1a"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->landmark:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;

    const/16 p3, 0x8

    new-array p3, p3, [Landroid/graphics/PointF;

    .line 11
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->a()Landroid/graphics/PointF;

    move-result-object p4

    aput-object p4, p3, v3

    .line 12
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->b()Landroid/graphics/PointF;

    move-result-object p4

    aput-object p4, p3, v2

    const/4 p4, 0x2

    .line 13
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->d()Landroid/graphics/PointF;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    .line 14
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->j()Landroid/graphics/PointF;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x4

    .line 15
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->c()Landroid/graphics/PointF;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x5

    .line 16
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->i()Landroid/graphics/PointF;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x6

    .line 17
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x7

    .line 18
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->e()Landroid/graphics/PointF;

    move-result-object p2

    aput-object p2, p3, p4

    .line 19
    invoke-static {p3}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LandmarkView;->a(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;J)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {v0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1$onCheckNoFace$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1$onCheckNoFace$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;I)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->tvBlurVar:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "\u5f53\u524d\u6e05\u6670\u5ea6\u503c\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->tvHighLightRate:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "\u5f53\u524d\u9ad8\u4eae\u5360\u6bd4\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f(FFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->tvAngleWrong:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89d2\u5ea6\u4e0d\u5408\u9002\uff08x:y:z\uff09["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x42340000    # 45.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x3de00000    # -40.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u5ea6\u4e0d\u5408\u9002(Debug)\uff0c angleX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", Y:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", Z:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g(Lorg/opencv/core/Rect;)V
    .locals 1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->tvAngleWrong:Landroid/widget/TextView;

    const-string v0, "\u89d2\u5ea6\u5408\u9002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceSettingBinding;->tvBrightness:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "\u5f53\u524d\u4eba\u8138\u4eae\u5ea6\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 6

    const-string v0, "face"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    invoke-static {p2}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1$onSuccess$1;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;

    const/4 v1, 0x0

    invoke-direct {v3, p2, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity$faceCheckListener$1$onSuccess$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/FaceSettingActivity;Landroid/graphics/Bitmap;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
