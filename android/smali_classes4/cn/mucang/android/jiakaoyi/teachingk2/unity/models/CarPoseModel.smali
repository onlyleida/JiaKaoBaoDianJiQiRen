.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public length:I

.field public pitch:F

.field public position:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public width:I

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    return-void
.end method
