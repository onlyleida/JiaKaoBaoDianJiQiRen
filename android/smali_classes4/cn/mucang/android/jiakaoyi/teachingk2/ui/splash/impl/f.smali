.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/f;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->o(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    return-void
.end method
