.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy;",
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

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u9690\u79c1\u5f39\u7a97"

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    return-object p0
.end method


# virtual methods
.method public f()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT_B2:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    :goto_0
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->getType()I

    move-result v1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "b2_coach_1"

    goto :goto_1

    :cond_1
    const-string v2, "ai_coach_1"

    :goto_1
    const-string v3, "keyAppPrivacy"

    .line 4
    invoke-direct {v0, v3, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    const-string v3, "activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy$test$1;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy$test$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy$test$2;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy$test$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy;)V

    .line 8
    invoke-direct {v1, v2, v0, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    .line 9
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    :goto_2
    return-void
.end method
