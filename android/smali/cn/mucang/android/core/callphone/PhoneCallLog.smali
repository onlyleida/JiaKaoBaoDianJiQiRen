.class public Lcn/mucang/android/core/callphone/PhoneCallLog;
.super Lcn/mucang/android/core/callphone/PhoneCallRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONFIRM_NO:I = 0x0

.field public static final CONFIRM_NOT_SET:I = -0x1

.field public static final CONFIRM_YES:I = 0x1


# instance fields
.field private appSwitchInterval:I

.field private callTimeFromLog:J

.field private confirmed:I

.field private duration:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/callphone/PhoneCallRequest;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->duration:I

    .line 3
    iput v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->confirmed:I

    .line 4
    iput v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->appSwitchInterval:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->callTimeFromLog:J

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/PhoneCallRequest;-><init>(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->duration:I

    .line 8
    iput p1, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->confirmed:I

    .line 9
    iput p1, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->appSwitchInterval:I

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->callTimeFromLog:J

    .line 11
    iput p1, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->confirmed:I

    return-void
.end method


# virtual methods
.method public getAppSwitchInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->appSwitchInterval:I

    return v0
.end method

.method public getCallTimeFromLog()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->callTimeFromLog:J

    return-wide v0
.end method

.method public getConfirmed()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->confirmed:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->duration:I

    return v0
.end method

.method public setAppSwitchInterval(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->appSwitchInterval:I

    :cond_0
    return-void
.end method

.method public setCallTimeFromLog(J)V
    .locals 0

    return-void
.end method

.method public setConfirmed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/callphone/PhoneCallLog;->confirmed:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    return-void
.end method
