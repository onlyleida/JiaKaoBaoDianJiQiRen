.class public Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;
.super Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;
.source "SourceFile"


# instance fields
.field private headPose:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;->headPose:I

    return-void
.end method


# virtual methods
.method public getHeadPose()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;->headPose:I

    return v0
.end method

.method public getHeadPoseDesc()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;->headPose:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "\u672a\u77e5"

    return-object v0

    :cond_0
    const-string v0, "\u4f4e\u5934+\u53f3\u6446\u5934"

    return-object v0

    :cond_1
    const-string v0, "\u4f4e\u5934+\u5de6\u6446\u5934"

    return-object v0

    :cond_2
    const-string v0, "\u4f4e\u5934"

    return-object v0

    :cond_3
    const-string v0, "\u53f3\u6446\u5934"

    return-object v0

    :cond_4
    const-string v0, "\u5de6\u6446\u5934"

    return-object v0

    :cond_5
    const-string v0, "\u6b63\u5e38"

    return-object v0
.end method

.method public isBowHead()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;->headPose:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeadLeft()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;->headPose:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHeadRight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;->headPose:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHeadPose(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;->headPose:I

    return-void
.end method
