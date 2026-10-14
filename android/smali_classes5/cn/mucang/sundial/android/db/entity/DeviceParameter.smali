.class public Lcn/mucang/sundial/android/db/entity/DeviceParameter;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private parameterId:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method

.method public static from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    invoke-direct {v0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getParameterId()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->parameterId:J

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getValue()[B

    move-result-object v2

    const-string v3, "GBK"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getValue()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->value:Ljava/lang/String;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcn/mucang/android/core/db/IdEntity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    .line 4
    iget-wide v2, p0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->parameterId:J

    iget-wide v4, p1, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->parameterId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getParameterId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->parameterId:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/db/IdEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->parameterId:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public setParameterId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->parameterId:J

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->value:Ljava/lang/String;

    return-void
.end method
