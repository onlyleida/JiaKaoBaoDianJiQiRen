.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/calibration/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/h;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/p;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/calibration/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/b;->b:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/p;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/b;->b:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/p;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/p;->o(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/calibration/p;Landroid/view/View;)V

    return-void
.end method
