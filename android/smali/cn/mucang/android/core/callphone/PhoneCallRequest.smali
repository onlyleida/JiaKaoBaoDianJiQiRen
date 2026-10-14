.class public Lcn/mucang/android/core/callphone/PhoneCallRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private callTime:J

.field private extra:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private needConfirm:Z

.field private phone:Ljava/lang/String;

.field private requestTime:J

.field private source:Ljava/lang/String;

.field private tryCallFirst:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->phone:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->group:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->group:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->source:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->source:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->label:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->label:Ljava/lang/String;

    .line 19
    iget-wide v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->callTime:J

    iput-wide v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->callTime:J

    .line 20
    iget-object v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->extra:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->extra:Ljava/lang/String;

    .line 21
    iget-boolean v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->needConfirm:Z

    iput-boolean v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->needConfirm:Z

    .line 22
    iget-boolean v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->tryCallFirst:Z

    iput-boolean v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->tryCallFirst:Z

    .line 23
    iget-wide v0, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    iput-wide v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/core/callphone/PhoneCallRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/core/callphone/PhoneCallRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->phone:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->group:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->source:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->label:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->extra:Ljava/lang/String;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "phonenumber, group and source must not be NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->phone:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->phone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    iget-wide v5, p1, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCallTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->callTime:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->source:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public isNeedConfirm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->needConfirm:Z

    return v0
.end method

.method public isTryCallFirst()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->tryCallFirst:Z

    return v0
.end method

.method public setCallTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->callTime:J

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->extra:Ljava/lang/String;

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->group:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->label:Ljava/lang/String;

    return-void
.end method

.method public setNeedConfirm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->needConfirm:Z

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->phone:Ljava/lang/String;

    return-void
.end method

.method public setRequestTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->requestTime:J

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->source:Ljava/lang/String;

    return-void
.end method

.method public setTryCallFirst(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/callphone/PhoneCallRequest;->tryCallFirst:Z

    return-void
.end method
