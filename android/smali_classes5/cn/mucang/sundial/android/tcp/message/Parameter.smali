.class public Lcn/mucang/sundial/android/tcp/message/Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BRIGHTNESS:I = 0x71

.field public static final HEARTBEAT_TIMEOUT:I = 0x1

.field public static final IMAGE_QUALITY:I = 0x70

.field public static final LOCATION_REPORT_DISTANCE:I = 0x2c

.field public static final LOCATION_REPORT_INTERVAL:I = 0x29

.field public static final LOCATION_REPORT_NO_DRIVER_DISTANCE:I = 0x2d

.field public static final LOCATION_REPORT_NO_DRIVER_INTERVAL:I = 0x22

.field public static final LOCATION_REPORT_STRATEGY:I = 0x20

.field public static final MILEAGE:I = 0x80

.field public static final OVER_SPEED:I = 0x55

.field public static final OVER_SPEED_TIME:I = 0x56

.field public static final TCP_RETRY_TIME:I = 0x3

.field public static final TCP_TIMEOUT:I = 0x2


# instance fields
.field private parameterId:J

.field private value:[B


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->checkDWORD(J)V

    .line 3
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->parameterId:J

    return-void
.end method

.method public static create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/Parameter;

    invoke-direct {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/message/Parameter;-><init>(J)V

    .line 2
    new-instance p0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 3
    invoke-virtual {p0, p2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;)V

    .line 4
    invoke-direct {v0, p2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getBytesValue(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/tcp/message/Parameter;->setValue([B)V

    return-object v0
.end method

.method public static from(J[B)Lcn/mucang/sundial/android/tcp/message/Parameter;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/Parameter;

    invoke-direct {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/message/Parameter;-><init>(J)V

    .line 2
    invoke-direct {v0, p2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->setValue([B)V

    return-object v0
.end method

.method public static from(Lcn/mucang/sundial/android/db/entity/DeviceParameter;)Lcn/mucang/sundial/android/tcp/message/Parameter;
    .locals 3

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/Parameter;

    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getParameterId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;-><init>(J)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->setValue([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/tcp/message/Parameter;->setValue([B)V

    :goto_0
    return-object v0
.end method

.method private getBytesValue(Ljava/lang/String;)[B
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->parameterId:J

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getValueClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public static getIntParameter(JI)I
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceParameterValue(J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0

    .line 4
    :cond_0
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return p2
.end method

.method private getValueClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x84

    if-eq p1, v0, :cond_0

    const/16 v0, 0x85

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    .line 1
    const-class p1, Ljava/lang/String;

    return-object p1

    .line 2
    :pswitch_0
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p1

    .line 4
    :cond_1
    :pswitch_1
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x45
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x50
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x70
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setValue([B)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->value:[B

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u53c2\u6570\u503c\u7684\u957f\u5ea6\u4e0d\u80fd\u5927\u4e8e\uff1a255"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getIntValue(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    return p1
.end method

.method public getLongValue(J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->parameterId:J

    long-to-int v1, v0

    .line 2
    invoke-direct {p0, v1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getValueClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->value:[B

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readDWORD()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 7
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->value:[B

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 8
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 11
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->value:[B

    const-string v2, "GBK"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameterId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->parameterId:J

    return-wide v0
.end method

.method public getValue()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->value:[B

    return-object v0
.end method

.method public toBytes()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->parameterId:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->value:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/Parameter;->value:[B

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
