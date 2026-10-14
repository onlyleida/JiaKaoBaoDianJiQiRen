.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/p0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/p0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/p0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/p0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;->N(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)V

    return-void
.end method
