.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/h1;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/m/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;",
            ")V"
        }
    .end annotation

    const-string v0, "\u7ed3\u675f"

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->g(ZLkotlin/jvm/b/a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->z(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
