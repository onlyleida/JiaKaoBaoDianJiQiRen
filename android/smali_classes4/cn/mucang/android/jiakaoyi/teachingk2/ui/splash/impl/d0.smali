.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->H(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;)V

    return-void
.end method
