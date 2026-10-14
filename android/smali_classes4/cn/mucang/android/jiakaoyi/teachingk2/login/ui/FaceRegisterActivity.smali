.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;
.implements Lcn/mucang/jiakaoyi/uilib/login/face/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceRegisterBinding;",
        ">;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/r;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004*\u0001\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0014J\u0008\u0010\u001f\u001a\u00020\u001eH\u0014J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\u001eH\u0002J\u0008\u0010\'\u001a\u00020\u001eH\u0002J\u0008\u0010(\u001a\u00020\u001eH\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0015*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceRegisterBinding;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;",
        "()V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;",
        "getBinding",
        "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "faceApi",
        "Lcn/mucang/jiakaoyi/uilib/login/api/FaceCheckApi;",
        "faceCheckListener",
        "cn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;",
        "faceLoginPresenter",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;",
        "rotateAnimator",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "scanAnimator",
        "sourceVideoStream",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "tfApi",
        "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;",
        "getStatName",
        "",
        "init",
        "",
        "onDestroy",
        "onMaskResult",
        "maskResult",
        "",
        "onPreviewFrame",
        "data",
        "",
        "startAnimation",
        "startPreview",
        "stopAnimation",
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
.field private b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

.field private c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

.field private d:Lcn/mucang/android/facelib/y/e;

.field private final e:Lcn/mucang/jiakaoyi/uilib/login/o/b;

.field private final f:Lkotlin/f;

.field private final g:Landroid/animation/ValueAnimator;

.field private h:Landroid/animation/ValueAnimator;

.field private final i:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/o/b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->e:Lcn/mucang/jiakaoyi/uilib/login/o/b;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$binding$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$binding$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->f:Lkotlin/f;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->g:Landroid/animation/ValueAnimator;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->i:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)Lcn/mucang/jiakaoyi/uilib/login/o/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->e:Lcn/mucang/jiakaoyi/uilib/login/o/b;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Lcn/mucang/android/facelib/y/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->d:Lcn/mucang/android/facelib/y/e;

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->y()V

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->z()V

    return-void
.end method

.method private final o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->f:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    return-object v0
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j0()V

    .line 2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->v()V

    return-void
.end method

.method public static synthetic q()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->u()V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->x(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->w(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final u()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_take_off_mask:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private final v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->g:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->g:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->circleIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->g:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/l;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->h:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 14
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    const-string v1, "binding.scanView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->circleIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final y()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    const-string v2, "binding.aiCamera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    .line 3
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const-string v5, "binding.camera"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 5
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private final z()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    const-string v1, "binding.scanView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->h:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    const/16 v0, 0x1388

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/i;

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a(ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "FaceRegisterActivity"

    return-object v0
.end method

.method protected init()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->b()I

    move-result v1

    const-string v2, "key_face_limit_pixel_v2"

    .line 3
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v7

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->e()Lorg/webrtc/EglBase$Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 7
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setSelected(Z)V

    .line 8
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;

    sget-object v3, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-direct {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    .line 10
    sget-object v1, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v1, v3, v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 11
    :goto_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    .line 12
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v4

    const/16 v5, 0x70

    const/16 v6, 0x70

    .line 13
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    invoke-static {v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v9, Lcn/mucang/android/facelib/GoogleDetectorFactory;

    invoke-direct {v9}, Lcn/mucang/android/facelib/GoogleDetectorFactory;-><init>()V

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->i:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v10}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;-><init>(Lkotlinx/coroutines/i0;IIILcn/mucang/android/jiakaoyi/framework/camera/b;Lcn/mucang/jiakaoyi/uilib/login/face/k;Lcn/mucang/jiakaoyi/uilib/login/face/j;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v1, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->h0(Lcn/mucang/jiakaoyi/uilib/login/face/r;)V

    .line 16
    :goto_1
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;

    invoke-direct {v14, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$init$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;Lkotlin/coroutines/c;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceRegisterBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceRegisterBinding;->tvName:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->btnFaceCheck:Landroid/widget/TextView;

    const-string v2, "binding.btnFaceCheck"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->faceTipTv:Landroid/widget/TextView;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_move_face_recog_frame:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceRegisterBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceRegisterBinding;->btnRegister:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onConnect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onConnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->P()V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    const-string v2, "binding.aiCamera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->o()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const-string v2, "binding.camera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    .line 6
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->stop()V

    :goto_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    const/4 v1, 0x2

    const-string v2, "FaceRegister"

    .line 8
    invoke-static {v2, v0, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDetached(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDisconnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onPreviewFrame([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
