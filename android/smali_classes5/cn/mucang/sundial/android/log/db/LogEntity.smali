.class public Lcn/mucang/sundial/android/log/db/LogEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# static fields
.field public static final StateEnd:I = 0x1

.field public static final StateSend:I = 0x2

.field public static final StateStart:I


# instance fields
.field private dirName:Ljava/lang/String;

.field private endTime:J

.field private file:Ljava/lang/String;

.field private size:J

.field private startTime:J

.field private state:I

.field private type:I

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->dirName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->endTime:J

    return-wide v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->size:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->startTime:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->type:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public setDirName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->dirName:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->endTime:J

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->file:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->size:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->startTime:J

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->state:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->type:I

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/log/db/LogEntity;->typeName:Ljava/lang/String;

    return-void
.end method
