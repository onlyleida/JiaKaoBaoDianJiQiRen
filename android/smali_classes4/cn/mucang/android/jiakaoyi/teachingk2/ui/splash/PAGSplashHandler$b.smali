.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libpag/PAGView$PAGFlushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->d(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TeachSplashActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$start$1",
        "Lorg/libpag/PAGView$PAGFlushListener;",
        "onFlush",
        "",
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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlush()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    invoke-virtual {v0, p0}, Lorg/libpag/PAGView;->removePAGFlushListener(Lorg/libpag/PAGView$PAGFlushListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b$a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)V

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->addPAGFlushListener(Lorg/libpag/PAGView$PAGFlushListener;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/libpag/PAGView;->setProgress(D)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b$b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)V

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->addListener(Lorg/libpag/PAGView$PAGViewListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/libpag/PAGView;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;->a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/PAGSplashHandler;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachingSplashV11Binding;->pagView:Lorg/libpag/PAGView;

    invoke-virtual {v0}, Lorg/libpag/PAGView;->play()V

    return-void
.end method
