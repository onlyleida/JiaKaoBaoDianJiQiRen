.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public brakeSystem:Z

.field public date:Ljava/lang/String;

.field public gpsType:I

.field public netType:I

.field public phoneState:I

.field public phoneTime:I

.field public rainMode:I

.field public satelliteCount:I

.field public time:I

.field public videoStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->phoneState:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->phoneTime:I

    return-void
.end method
