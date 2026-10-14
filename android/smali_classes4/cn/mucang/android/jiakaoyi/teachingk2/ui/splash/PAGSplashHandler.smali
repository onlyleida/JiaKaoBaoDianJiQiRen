.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;",
        "",
        "binding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;",
        "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;)V",
        "showProgress",
        "",
        "start",
        "activity",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;",
        "SimplePAGViewListener",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->c()V

    return-void
.end method

.method private final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->descLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x190

    .line 4
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final d(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "splash.pag"

    invoke-static {v0, v1}, Lorg/libpag/PAGFile;->Load(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/libpag/PAGFile;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    invoke-virtual {v1, v0}, Lorg/libpag/PAGView;->setComposition(Lorg/libpag/PAGComposition;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    const-wide v1, 0x3fcae147ae147ae1L    # 0.21

    invoke-virtual {v0, v1, v2}, Lorg/libpag/PAGView;->setProgress(D)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->setScaleMode(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)V

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->addPAGFlushListener(Lorg/libpag/PAGView$PAGFlushListener;)V

    .line 6
    invoke-static {p1}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v2

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$start$2;

    const/4 p1, 0x0

    invoke-direct {v5, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$start$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
