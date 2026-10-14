.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public accelerator:F

.field public clutch:F

.field public debugInfo:Ljava/lang/String;

.field public doorState:Z

.field public footbrake:F

.field public gear:I

.field public handbrake:Z

.field public horn:Z

.field public key:Z

.field public lightsState:I

.field public power:Z

.field public rpm:I

.field public seatBelt:Z

.field public speed:F

.field public wheelAngle:F

.field public wiper:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->gear:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->gear:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->debugInfo:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->debugInfo:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->clutch:F

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->clutch:F

    sub-float/2addr v2, v3

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->handbrake:Z

    iget-boolean v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->handbrake:Z

    if-ne v2, v4, :cond_2

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->footbrake:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->footbrake:F

    sub-float/2addr v2, v4

    .line 6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->power:Z

    iget-boolean v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->power:Z

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->key:Z

    iget-boolean v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->key:Z

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->rpm:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->rpm:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->wiper:Z

    iget-boolean v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->wiper:Z

    if-ne v2, v4, :cond_2

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->accelerator:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->accelerator:F

    sub-float/2addr v2, v4

    .line 7
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->wheelAngle:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->wheelAngle:F

    sub-float/2addr v2, v4

    .line 8
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->speed:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->speed:F

    sub-float/2addr v2, v4

    .line 9
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->lightsState:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->lightsState:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->seatBelt:Z

    iget-boolean v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->seatBelt:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->doorState:Z

    iget-boolean v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->doorState:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->horn:Z

    iget-boolean v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->horn:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->speed:F

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->speed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->wheelAngle:F

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->wheelAngle:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method
