.class public final Lcn/mucang/sundial/android/utils/DistanceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001&B\t\u0008\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0016\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u0010R\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/sundial/android/utils/DistanceUtil;",
        "",
        "",
        "distance",
        "",
        "mileageAccuracy",
        "optimization",
        "(DI)D",
        "",
        "",
        "args",
        "Lkotlin/v;",
        "main",
        "([Ljava/lang/String;)V",
        "srcData",
        "parseGpsData",
        "(Ljava/lang/String;)V",
        "dm",
        "dm2dd",
        "(Ljava/lang/String;)D",
        "times",
        "I",
        "gpsType",
        "Ljava/lang/String;",
        "getGpsType",
        "()Ljava/lang/String;",
        "setGpsType",
        "Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;",
        "gpsContent",
        "Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;",
        "getGpsContent",
        "()Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;",
        "setGpsContent",
        "(Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;)V",
        "lastDistance",
        "D",
        "<init>",
        "()V",
        "GpsContent",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/android/utils/DistanceUtil;

.field private static gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

.field private static gpsType:Ljava/lang/String;

.field private static lastDistance:D

.field private static times:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/utils/DistanceUtil;

    invoke-direct {v0}, Lcn/mucang/sundial/android/utils/DistanceUtil;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->INSTANCE:Lcn/mucang/sundial/android/utils/DistanceUtil;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    sput-wide v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->lastDistance:D

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    invoke-direct {v0}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    const-string v0, ""

    .line 4
    sput-object v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "3,71,69,70,85,,,,,,,1.17,0.67,0.96*11\nGPGSV,4,1,16,02,54,073,39,05,68,334,45,06,12,100,38,11,46,072,32*71\nGPGSV,4,2,16,12,13,211,38,13,49,149,34,15,30,196,45,18,07,298,26*75\nGPGSV,4,3,16GNRMC,105824.00,A,3048.86972,N,10357.49120,E,0.533,285.37,160522,,,D*70\nGNVTG,285.37,T,,M,0.533,N,0.987,K,D*2E\nGNGGA,105824.00,3048.86972,N,10357.49120,E,2,12,0.69,529.6,M,-30.1,M,,0000*6"

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/android/utils/DistanceUtil;->parseGpsData(Ljava/lang/String;)V

    return-void
.end method

.method public static final optimization(DI)D
    .locals 9

    if-lez p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    const/16 v1, 0x3e8

    .line 1
    div-int/2addr v1, v0

    int-to-double v2, p2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 2
    sget-wide v4, Lcn/mucang/sundial/android/utils/DistanceUtil;->lastDistance:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 p2, 0x0

    cmpg-double v0, v4, v6

    if-eqz v0, :cond_1

    int-to-double v0, v1

    mul-double v6, p0, v0

    double-to-int v6, v6

    mul-double v4, v4, v0

    double-to-int v0, v4

    if-ne v6, v0, :cond_1

    .line 3
    sget v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->times:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->times:I

    goto :goto_1

    .line 4
    :cond_1
    sput p2, Lcn/mucang/sundial/android/utils/DistanceUtil;->times:I

    .line 5
    :goto_1
    sget v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->times:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    int-to-double v0, p2

    cmpl-double v4, p0, v0

    if-lez v4, :cond_4

    sub-double v4, p0, v2

    const-string v6, " = "

    const-string v7, "\u91cc\u7a0b\u4f18\u5316\u7b2c"

    cmpl-double v8, v4, v2

    if-ltz v8, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/sundial/android/utils/DistanceUtil;->times:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21\uff1a\u5927\u4e8e\u6700\u5c0f\u7cbe\u5ea6\u65f6\uff0c\u51cf\u53bb\u6700\u5c0f\u7cbe\u5ea6\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    move-wide p0, v4

    goto :goto_2

    :cond_2
    cmpl-double v8, v4, v0

    if-ltz v8, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/sundial/android/utils/DistanceUtil;->times:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21\uff1a\u7b49\u4e8e\u6700\u5c0f\u7cbe\u5ea6\u65f6\uff0c\u52a0\u4e0a\u6700\u5c0f\u7cbe\u5ea6\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-double/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 8
    :cond_3
    :goto_2
    sput p2, Lcn/mucang/sundial/android/utils/DistanceUtil;->times:I

    .line 9
    :cond_4
    sput-wide p0, Lcn/mucang/sundial/android/utils/DistanceUtil;->lastDistance:D

    return-wide p0
.end method

.method public static final parseGpsData(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string v2, "\n"

    .line 2
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v2, ","

    .line 4
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    .line 5
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    check-cast v2, [Ljava/lang/String;

    .line 6
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Integer.valueOf(sValues[6])"

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x7

    const/4 v9, 0x2

    if-lt v3, v5, :cond_d

    :try_start_1
    aget-object v3, v2, v1

    const-string v10, "GGA"

    invoke-static {v3, v10, v1, v9, v6}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7
    aget-object v3, v2, v9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 8
    sget-object v3, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    sget-object v5, Lcn/mucang/sundial/android/utils/DistanceUtil;->INSTANCE:Lcn/mucang/sundial/android/utils/DistanceUtil;

    aget-object v6, v2, v9

    invoke-virtual {v5, v6}, Lcn/mucang/sundial/android/utils/DistanceUtil;->dm2dd(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setLat(D)V

    :cond_5
    const/4 v3, 0x4

    .line 9
    aget-object v5, v2, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_7

    .line 10
    sget-object v5, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    sget-object v6, Lcn/mucang/sundial/android/utils/DistanceUtil;->INSTANCE:Lcn/mucang/sundial/android/utils/DistanceUtil;

    aget-object v3, v2, v3

    invoke-virtual {v6, v3}, Lcn/mucang/sundial/android/utils/DistanceUtil;->dm2dd(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setLng(D)V

    .line 11
    :cond_7
    aget-object v3, v2, v7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_9

    .line 12
    sget-object v3, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setState(I)V

    .line 13
    :cond_9
    aget-object v3, v2, v8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_b

    .line 14
    sget-object v3, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Integer.valueOf(sValues[7])"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setUsedCnt(I)V

    :cond_b
    const/16 v3, 0x9

    .line 15
    aget-object v4, v2, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_3

    .line 16
    sget-object v4, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "java.lang.Double.valueOf(sValues[9])"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setAltitude(D)V

    goto/16 :goto_2

    .line 17
    :cond_d
    array-length v3, v2

    if-lt v3, v8, :cond_11

    aget-object v3, v2, v1

    const-string v10, "GSV"

    invoke-static {v3, v10, v1, v9, v6}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x3

    .line 18
    aget-object v5, v2, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_f

    .line 19
    sget-object v5, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "Integer.valueOf(sValues[3])"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setViewCnt(I)V

    .line 20
    :cond_f
    aget-object v3, v2, v7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_3

    .line 21
    sget-object v3, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setAngle(I)V

    goto/16 :goto_2

    .line 22
    :cond_11
    array-length v3, v2

    if-lt v3, v5, :cond_3

    aget-object v3, v2, v1

    const-string v4, "RMC"

    invoke-static {v3, v4, v1, v9, v6}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    aget-object v3, v2, v9

    const-string v4, "A"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 24
    sget-object v3, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    invoke-virtual {v3, v0}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setValid(Z)V

    .line 25
    aget-object v3, v2, v8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_13

    .line 26
    sget-object v3, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    const v4, 0x3f03b646    # 0.5145f

    aget-object v5, v2, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "java.lang.Float.valueOf(sValues[7])"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float v5, v5, v4

    invoke-virtual {v3, v5}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setSpeed(F)V

    :cond_13
    const/16 v3, 0xb

    .line 27
    aget-object v4, v2, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_b

    :cond_14
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_3

    .line 28
    sget-object v4, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Integer.valueOf(sValues[11])"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setAngle(I)V

    goto/16 :goto_2

    .line 29
    :cond_15
    sget-object v2, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    invoke-virtual {v2, v1}, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->setValid(Z)V

    goto/16 :goto_2

    .line 30
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_17
    return-void
.end method


# virtual methods
.method public final dm2dd(Ljava/lang/String;)D
    .locals 7

    const-string v0, "dm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    .line 1
    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->S(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public final getGpsContent()Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    return-object v0
.end method

.method public final getGpsType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsType:Ljava/lang/String;

    return-object v0
.end method

.method public final setGpsContent(Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsContent:Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;

    return-void
.end method

.method public final setGpsType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/sundial/android/utils/DistanceUtil;->gpsType:Ljava/lang/String;

    return-void
.end method
