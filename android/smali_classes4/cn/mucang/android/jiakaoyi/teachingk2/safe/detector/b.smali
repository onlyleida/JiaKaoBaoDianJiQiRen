.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:D

.field private static c:D

.field private static d:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "brake_obd_speed_distance_argument"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->i(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->b:D

    .line 3
    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->c:D

    .line 4
    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->d:D

    return-void
.end method

.method public static a(D)D
    .locals 6

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->c:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->d:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double v0, v0, p0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double v0, v0, v2

    .line 2
    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->b:D

    mul-double v2, v2, v0

    mul-double v2, v2, v0

    sget-wide v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->c:D

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->d:D

    add-double/2addr v2, v0

    const-wide v0, 0x3fc3333333333333L    # 0.15

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v0

    add-double/2addr v2, p0

    const-wide/high16 p0, 0x4031000000000000L    # 17.0

    .line 3
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    add-double/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static b()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v3, v1

    if-ne v3, v2, :cond_0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->b:D

    const/4 v2, 0x1

    .line 6
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->c:D

    const/4 v2, 0x2

    .line 7
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    sput-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->d:D

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u5239\u8f66\u7cfb\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u5239\u8f66\u7cfb\u6570\u51fa\u9519:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(DDD)V
    .locals 2

    .line 1
    sput-wide p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->b:D

    .line 2
    sput-wide p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->c:D

    .line 3
    sput-wide p4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->d:D

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u8bbe\u7f6eobd\u5239\u8f66\u7cfb\u6570: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
