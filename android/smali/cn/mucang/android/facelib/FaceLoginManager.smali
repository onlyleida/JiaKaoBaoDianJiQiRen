.class public final Lcn/mucang/android/facelib/FaceLoginManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/facelib/w/a/b;
.implements Lcn/mucang/android/facelib/w/a/c;
.implements Lcn/mucang/jiakaoyi/uilib/login/face/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/facelib/w/a/b<",
        "Lcn/mucang/android/facelib/y/e$a;",
        ">;",
        "Lcn/mucang/android/facelib/w/a/c<",
        "Lcn/mucang/android/facelib/y/e$a;",
        "Lcn/mucang/android/facelib/model/a;",
        ">;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/r;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\r\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00032\u00020\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010&\u001a\u00020\'J\u0016\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020 2\u0006\u0010*\u001a\u00020 J\u0006\u0010+\u001a\u00020\'J\u0012\u0010,\u001a\u0004\u0018\u00010\u00022\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020\'2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u000103J\u0008\u00104\u001a\u00020\'H\u0002J\u0018\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020\'2\u0006\u0010;\u001a\u00020\u0008H\u0016J \u0010<\u001a\u0002062\u0006\u00107\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u00042\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010>\u001a\u00020\'2\u0008\u0010?\u001a\u0004\u0018\u00010\u001eJ\u0010\u0010@\u001a\u00020\'2\u0008\u0010?\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010A\u001a\u00020\'2\u0008\u0010?\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010B\u001a\u00020\'2\u0006\u0010=\u001a\u00020CJ\u000e\u0010D\u001a\u00020\'2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010E\u001a\u00020\'2\u0006\u0010F\u001a\u00020GJ\u0006\u0010H\u001a\u00020\'J\u0006\u0010I\u001a\u00020\'J\u000e\u0010J\u001a\u00020\'2\u0006\u0010F\u001a\u00020GJ\u0016\u0010K\u001a\u00020\'2\u0006\u0010L\u001a\u00020 2\u0006\u0010*\u001a\u00020 R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcn/mucang/android/facelib/FaceLoginManager;",
        "Lcn/mucang/android/facelib/auto/common/FaceDetector;",
        "Lcn/mucang/android/facelib/tflite/SimilarityClassifier$Recognition;",
        "Lcn/mucang/android/facelib/auto/common/UserFaceStorage;",
        "Lcn/mucang/android/facelib/model/FaceUserModel;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;",
        "()V",
        "MODE_LEARN",
        "",
        "MODE_LOGIN",
        "detector",
        "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;",
        "faceMatchingListener",
        "cn/mucang/android/facelib/FaceLoginManager$faceMatchingListener$1",
        "Lcn/mucang/android/facelib/FaceLoginManager$faceMatchingListener$1;",
        "facePresenter",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;",
        "faceRegister",
        "Lcn/mucang/android/facelib/FaceRegister;",
        "leanMode",
        "learningFlow",
        "Lcn/mucang/android/facelib/auto/learn/LearningFlow;",
        "learningTimeOut",
        "Lcn/mucang/android/facelib/TimeOut;",
        "matchingFlow",
        "Lcn/mucang/android/facelib/auto/match/MatchingFlow;",
        "matchingTimeOut",
        "nonStandardLoginListener",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginListener;",
        "proxyCheckListener",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;",
        "scene",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "sourceVideoStream",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "standardLoginListener",
        "clearFaceData",
        "",
        "deleteUserFaceData",
        "studentId",
        "mark",
        "destroy",
        "detect",
        "data",
        "Landroid/graphics/Bitmap;",
        "init",
        "factory",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;",
        "faceFilter",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceFilter;",
        "initLocalRecognizer",
        "match",
        "",
        "faceData",
        "faceResult",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;",
        "onMaskResult",
        "maskResult",
        "save",
        "user",
        "setCheckListener",
        "listener",
        "setNonStandardLoginListener",
        "setStandardLoginListener",
        "startLearn",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "startLogin",
        "startPreview",
        "view",
        "Landroid/view/View;",
        "stopLearn",
        "stopLogin",
        "stopPreview",
        "updateFaceHistory",
        "mucangId",
        "facelib_release"
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
.field public static final a:Lcn/mucang/android/facelib/FaceLoginManager;

.field private static b:Lcn/mucang/android/facelib/w/c/b; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/facelib/w/c/b<",
            "Lcn/mucang/android/facelib/y/e$a;",
            "Lcn/mucang/android/facelib/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcn/mucang/android/facelib/w/b/a; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/facelib/w/b/a<",
            "Lcn/mucang/android/facelib/y/e$a;",
            "Lcn/mucang/android/facelib/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcn/mucang/android/facelib/q; = null

.field private static e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter; = null

.field private static volatile f:I = -0x1

.field private static g:Lcn/mucang/android/facelib/y/e; = null

.field private static volatile h:Ljava/lang/String; = ""

.field private static i:Lcn/mucang/jiakaoyi/uilib/login/face/l;

.field private static j:Lcn/mucang/jiakaoyi/uilib/login/face/l;

.field private static k:Lcn/mucang/jiakaoyi/uilib/login/face/j;

.field private static l:Lkotlinx/coroutines/i0;

.field private static m:Lcn/mucang/android/jiakaoyi/framework/camera/b;

.field private static n:Lcn/mucang/android/facelib/TimeOut;

.field private static o:Lcn/mucang/android/facelib/TimeOut;

.field private static final p:Lcn/mucang/android/facelib/FaceLoginManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-direct {v0}, Lcn/mucang/android/facelib/FaceLoginManager;-><init>()V

    sput-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    .line 1
    new-instance v0, Lcn/mucang/android/facelib/FaceLoginManager$a;

    invoke-direct {v0}, Lcn/mucang/android/facelib/FaceLoginManager$a;-><init>()V

    sput-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->p:Lcn/mucang/android/facelib/FaceLoginManager$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(I)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/facelib/FaceLoginManager;->F(I)V

    return-void
.end method

.method public static synthetic B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/facelib/FaceLoginManager;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic C()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->s()V

    return-void
.end method

.method public static synthetic D()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/facelib/FaceLoginManager;->t()V

    return-void
.end method

.method private static final F(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "\u6234\u53e3\u7f69\u4e86"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic d()Lcn/mucang/android/facelib/q;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->d:Lcn/mucang/android/facelib/q;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/facelib/FaceLoginManager;->f:I

    return v0
.end method

.method public static final synthetic g()Lcn/mucang/android/facelib/w/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->c:Lcn/mucang/android/facelib/w/b/a;

    return-object v0
.end method

.method public static final synthetic h()Lcn/mucang/android/facelib/TimeOut;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->o:Lcn/mucang/android/facelib/TimeOut;

    return-object v0
.end method

.method public static final synthetic i()Lcn/mucang/android/facelib/w/c/b;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->b:Lcn/mucang/android/facelib/w/c/b;

    return-object v0
.end method

.method public static final synthetic j()Lcn/mucang/android/facelib/TimeOut;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->n:Lcn/mucang/android/facelib/TimeOut;

    return-object v0
.end method

.method public static final synthetic k()Lcn/mucang/jiakaoyi/uilib/login/face/l;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->j:Lcn/mucang/jiakaoyi/uilib/login/face/l;

    return-object v0
.end method

.method public static final synthetic l()Lcn/mucang/jiakaoyi/uilib/login/face/j;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->k:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    return-object v0
.end method

.method public static final synthetic m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic n()Lkotlinx/coroutines/i0;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    return-object v0
.end method

.method public static final synthetic o()Lcn/mucang/jiakaoyi/uilib/login/face/l;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->i:Lcn/mucang/jiakaoyi/uilib/login/face/l;

    return-object v0
.end method

.method public static final synthetic p(Lcn/mucang/android/facelib/y/e;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/facelib/FaceLoginManager;->g:Lcn/mucang/android/facelib/y/e;

    return-void
.end method

.method public static final synthetic q(Lcn/mucang/android/facelib/q;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/facelib/FaceLoginManager;->d:Lcn/mucang/android/facelib/q;

    return-void
.end method

.method private static final s()V
    .locals 1

    sget-object v0, Lcn/mucang/android/facelib/f;->a:Lcn/mucang/android/facelib/f;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final t()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->d:Lcn/mucang/android/facelib/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/facelib/q;->a()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 3
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v0, "\u6e05\u9664\u6240\u6709\u79bb\u7ebf\u4eba\u8138\u5411\u91cf\u6570\u636e\u548c\u7167\u7247"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$mark"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$studentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->d:Lcn/mucang/android/facelib/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p0}, Lcn/mucang/android/facelib/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 3
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5220\u9664\uff08"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff09\u79bb\u7ebf\u4eba\u8138\u5411\u91cf\u6570\u636e\u548c\u7167\u7247"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final z()V
    .locals 8

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    sget-object v1, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$1;->INSTANCE:Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$1;

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/v;->g(Lkotlin/jvm/b/l;)V

    .line 2
    sget-object v2, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcn/mucang/android/facelib/FaceLoginManager$initLocalRecognizer$2;-><init>(Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method


# virtual methods
.method public E(Lcn/mucang/android/facelib/y/e$a;Lcn/mucang/jiakaoyi/uilib/login/face/m;)Z
    .locals 23

    move-object/from16 v1, p1

    const-string v0, "faceData"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "faceResult"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/facelib/y/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, [[F

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, [[F

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "standard"

    const/4 v7, 0x1

    const-string v8, "ms"

    const/4 v9, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v0, v9}, Lkotlin/collections/k;->B([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-nez v0, :cond_2

    :goto_1
    move-object v0, v4

    goto/16 :goto_5

    .line 4
    :cond_2
    sget-object v10, Lcn/mucang/android/facelib/s;->a:Lcn/mucang/android/facelib/s$a;

    invoke-virtual {v10}, Lcn/mucang/android/facelib/s$a;->a()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v10, v11}, Lcn/mucang/android/facelib/s$a;->b(I)V

    .line 5
    sget-object v10, Lcn/mucang/android/facelib/FaceLoginManager;->h:Ljava/lang/String;

    if-nez v10, :cond_3

    return v9

    .line 6
    :cond_3
    invoke-static {v10, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    return v9

    .line 8
    :cond_4
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v0, v11, v12, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 10
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 11
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/o/b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/b;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "randomUUID().toString()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const-string v13, "bos.toByteArray()"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Lcn/mucang/jiakaoyi/uilib/login/o/b;->m(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v0, v4

    .line 14
    :cond_5
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_4

    .line 15
    :cond_6
    :try_start_1
    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 16
    new-instance v11, Lcn/mucang/jiakaoyi/uilib/login/o/b;

    invoke-direct {v11}, Lcn/mucang/jiakaoyi/uilib/login/o/b;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v12

    invoke-virtual {v11, v12, v0, v10}, Lcn/mucang/jiakaoyi/uilib/login/o/b;->n(F[FLjava/lang/String;)Lcn/mucang/jiakaoyi/uilib/login/model/MatchResultModel;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v0, v4

    :cond_7
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/model/MatchResultModel;

    if-nez v0, :cond_8

    move-object v0, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/MatchResultModel;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findNearest\u8017\u8d39\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "faceLogin"

    invoke-static {v11, v10}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_5
    new-instance v10, Lcn/mucang/android/facelib/model/NonPerceiveLoginData;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Lcn/mucang/android/facelib/model/NonPerceiveLoginData;-><init>(Ljava/lang/String;)V

    .line 21
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_b

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u4eba\u8138\u672a\u5339\u914d\u5230\u8d26\u53f7\uff0c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_a

    .line 23
    :cond_b
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 24
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-static {v0, v10}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->y(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    const v12, 0xff0c

    if-eqz v11, :cond_d

    .line 27
    instance-of v13, v11, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v13, :cond_c

    .line 28
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u767b\u5f55\uff08\u4eba\u8138\uff09\u63a5\u53e3\u5931\u8d25("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v14, v11

    check-cast v14, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v14}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ")\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 29
    :cond_c
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_d
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object v0, v4

    :cond_e
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5339\u914d\u6210\u529f\u7684\u89d2\u5ea6\uff1a"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", user:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_f

    move-object v2, v4

    goto :goto_9

    :cond_f
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v5

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    :goto_a
    if-eqz v0, :cond_13

    .line 32
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "sundial"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_10
    sget-object v11, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    if-nez v11, :cond_11

    goto :goto_b

    :cond_11
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v12

    const/4 v13, 0x0

    new-instance v14, Lcn/mucang/android/facelib/FaceLoginManager$match$2;

    invoke-direct {v14, v0, v10, v4}, Lcn/mucang/android/facelib/FaceLoginManager$match$2;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/facelib/model/NonPerceiveLoginData;Lkotlin/coroutines/c;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 35
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/facelib/FaceLoginManager;->O()V

    .line 36
    sget-object v17, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    if-nez v17, :cond_12

    goto :goto_c

    :cond_12
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v18

    const/16 v19, 0x0

    new-instance v2, Lcn/mucang/android/facelib/FaceLoginManager$match$3;

    invoke-direct {v2, v0, v1, v4}, Lcn/mucang/android/facelib/FaceLoginManager$match$3;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/facelib/y/e$a;Lkotlin/coroutines/c;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object/from16 v20, v2

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_c

    :cond_13
    const/4 v7, 0x0

    .line 37
    :goto_c
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->h:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xa

    goto :goto_d

    :cond_14
    const/16 v0, 0xf

    :goto_d
    if-nez v7, :cond_16

    .line 38
    sget-object v1, Lcn/mucang/android/facelib/s;->a:Lcn/mucang/android/facelib/s$a;

    invoke-virtual {v1}, Lcn/mucang/android/facelib/s$a;->a()I

    move-result v1

    if-lt v1, v0, :cond_16

    .line 39
    sget-object v8, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    if-nez v8, :cond_15

    goto :goto_e

    :cond_15
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcn/mucang/android/facelib/FaceLoginManager$match$4;

    invoke-direct {v11, v4}, Lcn/mucang/android/facelib/FaceLoginManager$match$4;-><init>(Lkotlin/coroutines/c;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 40
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/facelib/FaceLoginManager;->O()V

    :cond_16
    return v7
.end method

.method public G(Lcn/mucang/android/facelib/y/e$a;Lcn/mucang/android/facelib/model/a;Lcn/mucang/jiakaoyi/uilib/login/face/m;)Z
    .locals 3

    const-string v0, "faceData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "faceResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->d:Lcn/mucang/android/facelib/q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/facelib/q;->j(Lcn/mucang/android/facelib/y/e$a;Lcn/mucang/android/facelib/model/a;Lcn/mucang/jiakaoyi/uilib/login/face/m;)I

    move-result p1

    const/16 p2, 0x2711

    if-ne p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    xor-int/lit8 p1, v2, 0x1

    if-nez p1, :cond_2

    const-string p2, "\u6ce8\u518c\u6d41\u7a0b\u81ea\u52a8\u7ed3\u675f"

    .line 2
    invoke-static {p2}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/facelib/FaceLoginManager;->N()V

    :cond_2
    return p1
.end method

.method public final H(Lcn/mucang/jiakaoyi/uilib/login/face/j;)V
    .locals 0

    .line 1
    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->k:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    return-void
.end method

.method public final I(Lcn/mucang/jiakaoyi/uilib/login/face/l;)V
    .locals 0

    .line 1
    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->j:Lcn/mucang/jiakaoyi/uilib/login/face/l;

    return-void
.end method

.method public final J(Lcn/mucang/jiakaoyi/uilib/login/face/l;)V
    .locals 1

    const-string v0, "setStandardLoginListener\uff1a"

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 2
    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->i:Lcn/mucang/jiakaoyi/uilib/login/face/l;

    return-void
.end method

.method public final K(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/facelib/FaceLoginManager;->O()V

    .line 2
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->g:Lcn/mucang/android/facelib/y/e;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->d:Lcn/mucang/android/facelib/q;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v2, Lcn/mucang/android/facelib/model/a;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_2

    move-object v0, v1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v1

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p1

    .line 9
    :goto_0
    invoke-direct {v2, v0, v3, v4, v1}, Lcn/mucang/android/facelib/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->c:Lcn/mucang/android/facelib/w/b/a;

    if-eqz p1, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcn/mucang/android/facelib/w/a/a;->b()V

    .line 12
    :cond_6
    :goto_1
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->d:Lcn/mucang/android/facelib/q;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/facelib/q;->k()V

    .line 13
    :goto_2
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->o:Lcn/mucang/android/facelib/TimeOut;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcn/mucang/android/facelib/TimeOut;->d()V

    .line 14
    :goto_3
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    new-instance v0, Lcn/mucang/android/facelib/TimeOut;

    const-wide/32 v3, 0x2bf20

    invoke-direct {v0, p1, v3, v4}, Lcn/mucang/android/facelib/TimeOut;-><init>(Lkotlinx/coroutines/i0;J)V

    move-object p1, v0

    :goto_4
    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->o:Lcn/mucang/android/facelib/TimeOut;

    if-nez p1, :cond_a

    goto :goto_5

    .line 15
    :cond_a
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager$startLearn$2;->INSTANCE:Lcn/mucang/android/facelib/FaceLoginManager$startLearn$2;

    invoke-virtual {p1, v0}, Lcn/mucang/android/facelib/TimeOut;->e(Lkotlin/jvm/b/a;)V

    :goto_5
    const/4 p1, 0x2

    .line 16
    sput p1, Lcn/mucang/android/facelib/FaceLoginManager;->f:I

    .line 17
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j0()V

    .line 18
    :goto_6
    invoke-virtual {v2}, Lcn/mucang/android/facelib/model/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, " \u5f00\u59cb\u4eba\u8138\u5b66\u4e60"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcn/mucang/android/facelib/w/b/a;

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/facelib/w/b/a;-><init>(Ljava/lang/Object;Lcn/mucang/android/facelib/w/a/b;Lcn/mucang/android/facelib/w/a/c;J)V

    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->c:Lcn/mucang/android/facelib/w/b/a;

    if-nez p1, :cond_c

    goto :goto_7

    .line 21
    :cond_c
    invoke-virtual {p1}, Lcn/mucang/android/facelib/w/a/a;->a()V

    :goto_7
    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 3

    const-string v0, "scene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->g:Lcn/mucang/android/facelib/y/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->c:Lcn/mucang/android/facelib/w/b/a;

    if-eqz v0, :cond_2

    const-string p1, "\u6b63\u5728\u4eba\u8138\u5b66\u4e60\uff0c\u4e0d\u8fdb\u884c\u4eba\u8138\u767b\u5f55"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->h:Ljava/lang/String;

    const-string p1, "\u5f00\u59cb\u4eba\u8138\u8bc6\u522b\u767b\u5f55"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcn/mucang/android/facelib/s;->a:Lcn/mucang/android/facelib/s$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/mucang/android/facelib/s$a;->b(I)V

    .line 8
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->n:Lcn/mucang/android/facelib/TimeOut;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/facelib/TimeOut;->d()V

    .line 9
    :goto_0
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Lcn/mucang/android/facelib/TimeOut;

    const-wide/32 v1, 0x2bf20

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/facelib/TimeOut;-><init>(Lkotlinx/coroutines/i0;J)V

    move-object p1, v0

    :goto_1
    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->n:Lcn/mucang/android/facelib/TimeOut;

    if-nez p1, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager$startLogin$2;->INSTANCE:Lcn/mucang/android/facelib/FaceLoginManager$startLogin$2;

    invoke-virtual {p1, v0}, Lcn/mucang/android/facelib/TimeOut;->e(Lkotlin/jvm/b/a;)V

    :goto_2
    const/4 p1, 0x1

    .line 11
    sput p1, Lcn/mucang/android/facelib/FaceLoginManager;->f:I

    .line 12
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->j0()V

    .line 13
    :goto_3
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->b:Lcn/mucang/android/facelib/w/c/b;

    if-eqz p1, :cond_8

    if-nez p1, :cond_7

    goto :goto_4

    .line 14
    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/facelib/w/a/a;->b()V

    .line 15
    :cond_8
    :goto_4
    new-instance p1, Lcn/mucang/android/facelib/w/c/b;

    const-wide/16 v0, 0x0

    invoke-direct {p1, p0, p0, v0, v1}, Lcn/mucang/android/facelib/w/c/b;-><init>(Lcn/mucang/android/facelib/w/a/b;Lcn/mucang/android/facelib/w/a/c;J)V

    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->b:Lcn/mucang/android/facelib/w/c/b;

    if-nez p1, :cond_9

    goto :goto_5

    .line 16
    :cond_9
    invoke-virtual {p1}, Lcn/mucang/android/facelib/w/a/a;->a()V

    :goto_5
    return-void
.end method

.method public final M(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->m:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->b(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/facelib/FaceLoginManager;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, "\u505c\u6b62\u4eba\u8138\u5b66\u4e60"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l0()V

    :goto_0
    const/4 v0, -0x1

    .line 4
    sput v0, Lcn/mucang/android/facelib/FaceLoginManager;->f:I

    .line 5
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->c:Lcn/mucang/android/facelib/w/b/a;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/facelib/w/a/a;->b()V

    :goto_1
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->c:Lcn/mucang/android/facelib/w/b/a;

    .line 7
    sget-object v1, Lcn/mucang/android/facelib/FaceLoginManager;->o:Lcn/mucang/android/facelib/TimeOut;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/facelib/TimeOut;->d()V

    .line 8
    :goto_2
    sput-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->o:Lcn/mucang/android/facelib/TimeOut;

    :cond_3
    return-void
.end method

.method public final O()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->b:Lcn/mucang/android/facelib/w/c/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/facelib/w/a/a;->b()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->b:Lcn/mucang/android/facelib/w/c/b;

    .line 3
    sget v1, Lcn/mucang/android/facelib/FaceLoginManager;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v1, "\u505c\u6b62\u4eba\u8138\u8bc6\u522b\u767b\u5f55"

    .line 4
    invoke-static {v1}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcn/mucang/android/facelib/FaceLoginManager;->e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l0()V

    :goto_1
    const/4 v1, -0x1

    .line 6
    sput v1, Lcn/mucang/android/facelib/FaceLoginManager;->f:I

    .line 7
    sget-object v1, Lcn/mucang/android/facelib/FaceLoginManager;->n:Lcn/mucang/android/facelib/TimeOut;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/facelib/TimeOut;->d()V

    .line 8
    :goto_2
    sput-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->n:Lcn/mucang/android/facelib/TimeOut;

    :cond_3
    return-void
.end method

.method public final P(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->m:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->d(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "mucangId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v3, "DbLock"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v3

    const-class v4, Lcn/mucang/android/facelib/model/FaceHistoryEntity;

    const-string v5, "select * from t_face_history where mucang_id=?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 5
    invoke-static {v5, v1}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v1

    .line 6
    invoke-virtual {v3, v4, v1}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/facelib/model/FaceHistoryEntity;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcn/mucang/android/facelib/model/FaceHistoryEntity;

    invoke-direct {v1}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->setMucangId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p2}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->setMark(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->setUpdateTime(J)V

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/android/core/db/a;->w(Lcn/mucang/android/core/db/IdEntity;)V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 13
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public bridge synthetic a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/facelib/FaceLoginManager;->x(Landroid/graphics/Bitmap;)Lcn/mucang/android/facelib/y/e$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;Lcn/mucang/jiakaoyi/uilib/login/face/m;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/facelib/y/e$a;

    check-cast p2, Lcn/mucang/android/facelib/model/a;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/facelib/FaceLoginManager;->G(Lcn/mucang/android/facelib/y/e$a;Lcn/mucang/android/facelib/model/a;Lcn/mucang/jiakaoyi/uilib/login/face/m;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lcn/mucang/jiakaoyi/uilib/login/face/m;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/facelib/y/e$a;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/facelib/FaceLoginManager;->E(Lcn/mucang/android/facelib/y/e$a;Lcn/mucang/jiakaoyi/uilib/login/face/m;)Z

    move-result p1

    return p1
.end method

.method public e(I)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    new-instance v1, Lcn/mucang/android/facelib/a;

    invoke-direct {v1, p1}, Lcn/mucang/android/facelib/a;-><init>(I)V

    const-string p1, "onMaskResult"

    const/16 v2, 0x1388

    invoke-virtual {v0, p1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    sget-object v1, Lcn/mucang/android/facelib/e;->a:Lcn/mucang/android/facelib/e;

    const-string v2, "clearFaceData"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "studentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/facelib/b;

    invoke-direct {v0, p2, p1}, Lcn/mucang/android/facelib/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()V
    .locals 1

    const-string v0, "\u4eba\u8138\u767b\u5f55\u7ba1\u7406\u5668\uff1a\u9500\u6bc1"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/facelib/FaceLoginManager;->O()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/facelib/FaceLoginManager;->N()V

    .line 4
    sget-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->P()V

    .line 5
    :goto_0
    sget-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    invoke-virtual {v0}, Lcn/mucang/android/facelib/v;->m()V

    return-void
.end method

.method public x(Landroid/graphics/Bitmap;)Lcn/mucang/android/facelib/y/e$a;
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/facelib/v;->k(Landroid/graphics/Bitmap;Z)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const-string v1, "\u83b7\u53d6\u4eba\u8138\u5411\u91cf\u5931\u8d25"

    .line 3
    invoke-static {v1}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {v0, v2}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/facelib/y/e$a;

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-virtual {v0, p1}, Lcn/mucang/android/facelib/y/e$a;->d(Landroid/graphics/Bitmap;)V

    :goto_2
    return-object v0
.end method

.method public final y(Lcn/mucang/android/jiakaoyi/framework/camera/a;Lcn/mucang/jiakaoyi/uilib/login/face/o;)V
    .locals 9

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u4eba\u8138\u767b\u5f55\u7ba1\u7406\u5668\uff1a\u521d\u59cb\u5316"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/framework/camera/a;->a()Lcn/mucang/android/jiakaoyi/framework/camera/b;

    move-result-object p1

    .line 3
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    .line 4
    new-instance v7, Lcn/mucang/android/facelib/GoogleDetectorFactory;

    invoke-direct {v7}, Lcn/mucang/android/facelib/GoogleDetectorFactory;-><init>()V

    .line 5
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->b()I

    move-result v0

    const-string v1, "key_face_limit_pixel_v2"

    .line 6
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v5

    .line 7
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    .line 8
    sget-object v2, Lcn/mucang/android/facelib/FaceLoginManager;->l:Lkotlinx/coroutines/i0;

    .line 9
    sget-object v8, Lcn/mucang/android/facelib/FaceLoginManager;->p:Lcn/mucang/android/facelib/FaceLoginManager$a;

    const/16 v3, 0x70

    const/16 v4, 0x70

    move-object v1, v0

    move-object v6, p1

    .line 10
    invoke-direct/range {v1 .. v8}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;-><init>(Lkotlinx/coroutines/i0;IIILcn/mucang/android/jiakaoyi/framework/camera/b;Lcn/mucang/jiakaoyi/uilib/login/face/k;Lcn/mucang/jiakaoyi/uilib/login/face/j;)V

    sput-object v0, Lcn/mucang/android/facelib/FaceLoginManager;->e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p2}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->g0(Lcn/mucang/jiakaoyi/uilib/login/face/o;)V

    .line 12
    :goto_0
    sget-object p2, Lcn/mucang/android/facelib/FaceLoginManager;->e:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->h0(Lcn/mucang/jiakaoyi/uilib/login/face/r;)V

    .line 13
    :goto_1
    sput-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->m:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/facelib/FaceLoginManager;->z()V

    return-void
.end method
