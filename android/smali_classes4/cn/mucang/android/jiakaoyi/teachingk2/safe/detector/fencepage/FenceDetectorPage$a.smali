.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;->Trigger:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->b:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;->j(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;->Faraway:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;->k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->b:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/e/a;->j(Ljava/util/List;)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFenceDetectorPageBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/fencepage/FenceDetectorPage$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;)V

    return-void
.end method
