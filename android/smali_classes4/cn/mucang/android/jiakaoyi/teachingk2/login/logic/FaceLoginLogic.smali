.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;
.super Lcn/mucang/android/jiakaoyi/k3setting/d/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;
.implements Lcn/mucang/jiakaoyi/uilib/login/face/r;
.implements Lcn/mucang/jiakaoyi/uilib/login/face/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3setting/d/a<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;",
        ">;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/r;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000c*\u0001\u0012\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001IB)\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010(\u001a\u00020\tH\u0016J\u0008\u0010)\u001a\u00020\tH\u0002J\u0008\u0010*\u001a\u00020\tH\u0003J\u001a\u0010+\u001a\u00020\t2\u0010\u0008\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0002J\u0008\u0010-\u001a\u00020\tH\u0016J\u0008\u0010.\u001a\u00020\tH\u0016J\u0008\u0010/\u001a\u00020\tH\u0016J\u0008\u00100\u001a\u00020\tH\u0002J\u0010\u00101\u001a\u00020\t2\u0006\u00102\u001a\u000203H\u0016J\u0018\u00104\u001a\u00020\t2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020>H\u0016J\u0008\u0010?\u001a\u00020\tH\u0016J\u0010\u0010@\u001a\u00020\t2\u0006\u0010A\u001a\u000203H\u0002J\u0010\u0010B\u001a\u00020\t2\u0006\u0010C\u001a\u00020\u000bH\u0016J\u0008\u0010D\u001a\u00020\tH\u0002J\u0008\u0010E\u001a\u00020\tH\u0002J\u0010\u0010F\u001a\u00020\t2\u0006\u0010G\u001a\u00020\u000bH\u0016J\u0008\u0010H\u001a\u00020\tH\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\n  *\u0004\u0018\u00010\u001f0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0015R\u001a\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u000b0&X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;",
        "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginListener;",
        "binding",
        "switchType",
        "Lkotlin/Function0;",
        "",
        "faceSelected",
        "",
        "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "checkFaceTime",
        "",
        "delayJob",
        "Lkotlinx/coroutines/Job;",
        "faceCheckListener",
        "cn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$faceCheckListener$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$faceCheckListener$1;",
        "getFaceSelected",
        "()Lkotlin/jvm/functions/Function0;",
        "farFaceTime",
        "<set-?>",
        "isStarted",
        "()Z",
        "setStarted",
        "(Z)V",
        "isStarted$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "rotateAnimator",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "scanAnimator",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getSwitchType",
        "triggers",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;",
        "init",
        "innerDestroy",
        "innerStart",
        "innerStop",
        "actionInMain",
        "onConnect",
        "onDetached",
        "onDisconnect",
        "onFail",
        "onLoginFail",
        "message",
        "",
        "onLoginSuccess",
        "user",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "loginData",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;",
        "onMaskResult",
        "maskResult",
        "",
        "onPreviewFrame",
        "data",
        "",
        "release",
        "setText",
        "text",
        "start",
        "fromUser",
        "startAnimation",
        "startPreview",
        "stop",
        "switch",
        "stopAnimation",
        "Condition",
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


# static fields
.field static final synthetic m:[Lkotlin/reflect/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/l<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:J

.field private volatile f:J

.field private final g:Lkotlin/z/c;

.field private h:Lkotlinx/coroutines/i0;

.field private i:Lkotlinx/coroutines/t1;

.field private final j:Landroid/animation/ValueAnimator;

.field private k:Landroid/animation/ValueAnimator;

.field private final l:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/l;

    .line 1
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    const-string v3, "isStarted"

    const-string v4, "isStarted()Z"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m:[Lkotlin/reflect/l;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "switchType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "faceSelected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;-><init>(Landroidx/viewbinding/a;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->b:Lkotlin/jvm/b/a;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->c:Lkotlin/jvm/b/a;

    const/4 p2, 0x2

    new-array p3, p2, [Lkotlin/Pair;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->NO_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p3, v2

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->FAR_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-static {v0, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p3, v2

    .line 5
    invoke-static {p3}, Lkotlin/collections/l0;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->d:Ljava/util/Map;

    .line 6
    sget-object p3, Lkotlin/z/a;->a:Lkotlin/z/a;

    .line 7
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$b;

    invoke-direct {p3, v1, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;)V

    .line 8
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->g:Lkotlin/z/c;

    new-array p2, p2, [I

    .line 9
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->j:Landroid/animation/ValueAnimator;

    .line 10
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;

    invoke-direct {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->l:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data
.end method

.method private final A(Lkotlin/jvm/b/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->H(Lcn/mucang/jiakaoyi/uilib/login/face/j;)V

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->J(Lcn/mucang/jiakaoyi/uilib/login/face/l;)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/facelib/FaceLoginManager;->O()V

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->h:Lkotlinx/coroutines/i0;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$innerStop$1;

    invoke-direct {v5, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$innerStop$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 5
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->i:Lkotlinx/coroutines/t1;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :goto_1
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->i:Lkotlinx/coroutines/t1;

    return-void
.end method

.method static synthetic B(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlin/jvm/b/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->A(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->L(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->w(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlin/Pair;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->x(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlin/Pair;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->K(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final G()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_face_match_fail_hint:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_face_match_fail_hint)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->I(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->A(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private final H(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->g:Lkotlin/z/c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->m:[Lkotlin/reflect/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method private final I(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\u7ebf\u4e0a\u4eba\u8138\u8bc6\u522b\u767b\u5f55\uff1a"

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->h:Lkotlinx/coroutines/i0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$setText$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$setText$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Ljava/lang/String;Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method

.method private final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->j:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->circleIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->j:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/j;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->k:Landroid/animation/ValueAnimator;

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    const-string v1, "binding.scanView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final K(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

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

.method private static final L(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/animation/ValueAnimator;)V
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final M()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

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

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->M(Landroid/view/View;)V

    goto :goto_2

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->M(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private final N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->scanView:Landroid/view/View;

    const-string v1, "binding.scanView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->k:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->e:J

    return-wide v0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Lkotlinx/coroutines/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->i:Lkotlinx/coroutines/t1;

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->z()V

    return-void
.end method

.method public static final synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->e:J

    return-void
.end method

.method public static final synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->i:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->f:J

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->H(Z)V

    return-void
.end method

.method public static final synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->J()V

    return-void
.end method

.method public static final synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->N()V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->z()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->J()V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlin/Pair;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->B(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final y()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    .line 2
    sget-object v1, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v2, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v1, v2, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->unregisterCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    const-string v2, "binding.aiCamera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->P(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const-string v2, "binding.camera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->P(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final z()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->e:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->l:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->H(Lcn/mucang/jiakaoyi/uilib/login/face/j;)V

    .line 7
    invoke-virtual {v0, p0}, Lcn/mucang/android/facelib/FaceLoginManager;->J(Lcn/mucang/jiakaoyi/uilib/login/face/l;)V

    const-string v1, "standard"

    .line 8
    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->L(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->J()V

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->H(Z)V

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_keep_face_hint:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_keep_face_hint)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->I(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->i:Lkotlinx/coroutines/t1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 13
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->h:Lkotlinx/coroutines/i0;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$innerStart$2;

    invoke-direct {v6, p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$innerStart$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->i:Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->G()V

    return-void
.end method

.method public b(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 2

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_face_recog_success:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_face_recog_success)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->I(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onLoginSuccess$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->A(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_399:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 3
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x7d0

    .line 4
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->k:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->btnFaceCheck:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/e;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/k0;->e()Lorg/webrtc/EglBase$Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->aiCamera:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setSelected(Z)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->h:Lkotlinx/coroutines/i0;

    .line 12
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->a:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->c()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/f;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->g()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->y()V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->h(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->borderView:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceBorderView;

    const-string v0, "binding.borderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->z()V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->M()V

    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->j(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->B(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method public onConnect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->c:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->z()V

    .line 5
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->camera:Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const-string v2, "binding.camera"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->M(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->c:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_detected_camera_hint:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teach\u2026_no_detected_camera_hint)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->I(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onDetached$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onDetached$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->A(Lkotlin/jvm/b/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onPreviewFrame([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final v()Lkotlin/jvm/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->b:Lkotlin/jvm/b/a;

    return-object v0
.end method
