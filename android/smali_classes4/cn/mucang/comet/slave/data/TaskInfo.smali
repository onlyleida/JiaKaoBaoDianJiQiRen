.class public Lcn/mucang/comet/slave/data/TaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bufferSize:I

.field private step1Time:J

.field private taskInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/slave/data/TaskInfo;->bufferSize:I

    return v0
.end method

.method public getStep1Time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/slave/data/TaskInfo;->step1Time:J

    return-wide v0
.end method

.method public getTaskInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/slave/data/TaskInfo;->taskInterval:I

    return v0
.end method

.method public setBufferSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/slave/data/TaskInfo;->bufferSize:I

    return-void
.end method

.method public setStep1Time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/slave/data/TaskInfo;->step1Time:J

    return-void
.end method

.method public setTaskInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/slave/data/TaskInfo;->taskInterval:I

    return-void
.end method
