.class public Lcom/serenegiant/utils/ObjectHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBoolean(Ljava/lang/Object;Z)Z
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 6
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 7
    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 8
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 9
    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8

    .line 10
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v0, p0, v3

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 11
    :cond_8
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 12
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 13
    :cond_a
    instance-of v0, p0, Ljava/lang/Double;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_c

    .line 14
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpl-double v0, p0, v5

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 15
    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 16
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v0, p0, v5

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    return v1

    .line 17
    :cond_e
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 18
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "0x"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x10

    if-nez p1, :cond_13

    const-string p1, "0X"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_a

    .line 20
    :cond_f
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v0, p0, v5

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    return v1

    .line 21
    :catch_0
    :try_start_1
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_11

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 22
    :catch_1
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    cmp-long v0, p0, v3

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 23
    :catch_2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_13
    :goto_a
    const/4 p1, 0x2

    .line 24
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p0, :cond_14

    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    :goto_b
    return v1

    :catch_3
    nop

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    cmp-long v0, p0, v3

    if-eqz v0, :cond_15

    goto :goto_c

    :cond_15
    const/4 v1, 0x0

    :goto_c
    return v1

    :cond_16
    return p1
.end method

.method public static asByte(Ljava/lang/Object;B)B
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->byteValue()B

    move-result p0

    return p0

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->byteValue()B

    move-result p0

    return p0

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result p0

    return p0

    .line 11
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 12
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->byteValue()B

    move-result p0

    return p0

    .line 13
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 14
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result p0

    return p0

    .line 15
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 16
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    .line 17
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 18
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p1, "0x"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x10

    if-nez p1, :cond_9

    const-string p1, "0X"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 20
    :cond_8
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->byteValue()B

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 21
    :catch_0
    :try_start_1
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 22
    :catch_1
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->byteValue()B

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    .line 23
    :catch_2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    :goto_0
    const/4 p1, 0x2

    .line 24
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    int-to-byte p0, p0

    return p0

    .line 25
    :catch_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-byte p0, p1

    return p0

    :cond_a
    return p1
.end method

.method public static asDouble(Ljava/lang/Object;D)D
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    return-wide v1

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-double p0, p0

    return-wide p0

    .line 5
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-double p0, p0

    return-wide p0

    .line 7
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 8
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double p0, p0

    return-wide p0

    .line 9
    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 10
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 11
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 12
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    .line 13
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 14
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 15
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 16
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 17
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 18
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "0x"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 p2, 0x10

    if-nez p1, :cond_9

    const-string p1, "0X"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 p1, 0x2

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 21
    :catch_0
    :cond_a
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    .line 22
    :catch_1
    :try_start_2
    invoke-static {p0, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-wide p0

    :catch_2
    nop

    .line 23
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    move-wide v1, v3

    :goto_1
    return-wide v1

    :cond_c
    return-wide p1
.end method

.method public static asFloat(Ljava/lang/Object;F)F
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-float p0, p0

    return p0

    .line 5
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-float p0, p0

    return p0

    .line 7
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 8
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 9
    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 10
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result p0

    return p0

    .line 11
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 12
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 13
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 14
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    return p0

    .line 15
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 16
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    .line 17
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 18
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "0x"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x10

    if-nez p1, :cond_9

    const-string p1, "0X"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 p1, 0x2

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 21
    :catch_0
    :cond_a
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 22
    :catch_1
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->floatValue()F

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    :catch_2
    nop

    .line 23
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_c
    return p1
.end method

.method public static asInt(Ljava/lang/Object;I)I
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0

    .line 11
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 12
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result p0

    return p0

    .line 13
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 14
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    return p0

    .line 15
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 16
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 17
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 18
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p1, "0x"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x10

    if-nez p1, :cond_9

    const-string p1, "0X"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 20
    :cond_8
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 21
    :catch_0
    :try_start_1
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 22
    :catch_1
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    .line 23
    :catch_2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    :goto_0
    const/4 p1, 0x2

    .line 24
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return p0

    .line 25
    :catch_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0

    :cond_a
    return p1
.end method

.method public static asLong(Ljava/lang/Object;J)J
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    return-wide v1

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 5
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 7
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 8
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 9
    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 10
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 11
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 12
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 13
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 14
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 15
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 16
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 17
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 18
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "0x"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 p2, 0x10

    if-nez p1, :cond_9

    const-string p1, "0X"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 p1, 0x2

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 21
    :catch_0
    :cond_a
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    .line 22
    :catch_1
    :try_start_2
    invoke-static {p0, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-wide p0

    .line 23
    :catch_2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    move-wide v1, v3

    :goto_1
    return-wide v1

    :cond_c
    return-wide p1
.end method

.method public static asShort(Ljava/lang/Object;S)S
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-short p0, p0

    return p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    return p0

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result p0

    return p0

    .line 11
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 12
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->shortValue()S

    move-result p0

    return p0

    .line 13
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 14
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result p0

    return p0

    .line 15
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 16
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    .line 17
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 18
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p1, "0x"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x10

    if-nez p1, :cond_9

    const-string p1, "0X"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 20
    :cond_8
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->shortValue()S

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 21
    :catch_0
    :try_start_1
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 22
    :catch_1
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->shortValue()S

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    .line 23
    :catch_2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    :goto_0
    const/4 p1, 0x2

    .line 24
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    int-to-short p0, p0

    return p0

    .line 25
    :catch_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-short p0, p1

    return p0

    :cond_a
    return p1
.end method
