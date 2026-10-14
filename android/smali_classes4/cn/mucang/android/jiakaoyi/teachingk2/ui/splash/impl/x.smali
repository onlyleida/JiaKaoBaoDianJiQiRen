.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/x;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/x;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/x;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/x;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;)V

    return-void
.end method
