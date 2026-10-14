.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/e;->a:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/e;->a:Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;->d(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    return-void
.end method
