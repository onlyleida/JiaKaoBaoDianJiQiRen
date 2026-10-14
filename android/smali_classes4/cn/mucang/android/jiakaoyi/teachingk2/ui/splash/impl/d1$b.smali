.class Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
