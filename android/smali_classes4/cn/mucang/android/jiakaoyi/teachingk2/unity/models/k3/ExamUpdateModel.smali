.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public distance:Ljava/lang/String;

.field public lightTime:Ljava/lang/String;

.field public mileage:I

.field public score:Ljava/lang/String;

.field public transient scoreNum:I

.field public stepName:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public transient timeNum:J

.field public tipLeft:Ljava/lang/String;

.field public tipRight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->scoreNum:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->timeNum:J

    return-void
.end method
