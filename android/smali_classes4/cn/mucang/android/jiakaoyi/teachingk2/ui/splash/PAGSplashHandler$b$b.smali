.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b$b;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->onFlush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$start$1$onFlush$2",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$SimplePAGViewListener;",
        "onAnimationRepeat",
        "",
        "p0",
        "Lorg/libpag/PAGView;",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Lorg/libpag/PAGView;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, v0, v1}, Lorg/libpag/PAGView;->setProgress(D)V

    return-void
.end method
