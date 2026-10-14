.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/face/r;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0004H\u0016J\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u001b\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;",
        "()V",
        "checkCount",
        "",
        "checkListener",
        "cn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$checkListener$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$checkListener$1;",
        "isStarted",
        "",
        "loginType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "noMatchCount",
        "presenter",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "sourceVideoStream",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "tfApi",
        "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;",
        "innerStop",
        "",
        "onMaskResult",
        "maskResult",
        "release",
        "startCheck",
        "stopCheck",
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
.field private a:Lcn/mucang/android/jiakaoyi/framework/camera/b;

.field private b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

.field private c:Lkotlinx/coroutines/i0;

.field private d:Lcn/mucang/android/facelib/y/e;

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->h:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->e:I

    return p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->h:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->f:I

    return p0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    return-object p0
.end method

.method public static final synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lkotlinx/coroutines/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->c:Lkotlinx/coroutines/i0;

    return-object p0
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)Lcn/mucang/android/jiakaoyi/framework/camera/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->a:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    return-object p0
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->p()V

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->e:I

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->f:I

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lkotlinx/coroutines/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->c:Lkotlinx/coroutines/i0;

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lcn/mucang/android/jiakaoyi/framework/camera/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->a:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->g:Z

    return-void
.end method

.method public static final synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;Lcn/mucang/android/facelib/y/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->d:Lcn/mucang/android/facelib/y/e;

    return-void
.end method

.method private final p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->g:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->b:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->l0()V

    :goto_0
    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 0

    return-void
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->g:Z

    return v0
.end method

.method public final r(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
    .locals 1

    const-string v0, "loginType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->e:I

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->f:I

    .line 3
    sget-object p1, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$startCheck$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/facelib/v;->g(Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public final s()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->p()V

    return-void
.end method
