.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;->x:F

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;->y:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;->width:F

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;->height:F

    return-void
.end method
