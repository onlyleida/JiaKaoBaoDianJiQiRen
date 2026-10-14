.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/calibration/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->K(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)V

    return-void
.end method
