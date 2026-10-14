.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestLocalConfig;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestLocalConfig;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "message",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "nextEvent",
        "(Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;)V",
        "test",
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

    const-string v0, "\u672c\u5730\u914d\u7f6e"

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_pulling_config:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestLocalConfig$test$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestLocalConfig$test$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestLocalConfig;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->i(ZZLkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method
