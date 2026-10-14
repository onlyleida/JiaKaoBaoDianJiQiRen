.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:D

.field public static b:D

.field public static c:D

.field public static d:D

.field public static e:D

.field public static f:D

.field private static volatile g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private static final h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field private static final i:[I

.field private static j:Z

.field private static k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static l:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    array-length v1, v0

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 2
    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->i:[I

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->j:Z

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->l:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    return-void
.end method

.method public static a()[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    return-object v0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static c()V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->j:Z

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->d()V

    return-void
.end method

.method private static d()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2
    aget-object v2, v1, v3

    .line 3
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    :try_start_0
    const-class v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v4, :cond_0

    .line 7
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v6, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput-object v4, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\u521d\u59cb\u5316\u6321\u4f4d\u5931\u8d25:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static e(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_gear_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(DDDDDD)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->c()V

    .line 2
    sput-wide p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->c:D

    .line 3
    sput-wide p2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->b:D

    .line 4
    sput-wide p4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->a:D

    .line 5
    sput-wide p6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->f:D

    .line 6
    sput-wide p8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->e:D

    .line 7
    sput-wide p10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->d:D

    .line 8
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz p0, :cond_1

    .line 9
    sget-wide p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->f:D

    sget-wide p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->c:D

    sub-double/2addr p1, p3

    double-to-float p1, p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 10
    sget-wide p2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->e:D

    sget-wide p4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->b:D

    sub-double/2addr p2, p4

    double-to-float p2, p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    .line 11
    sget-wide p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->d:D

    sget-wide p5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->a:D

    sub-double/2addr p3, p5

    double-to-float p3, p3

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p3

    .line 12
    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget p5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object p5, p4, p5

    if-nez p5, :cond_0

    .line 13
    new-instance p5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {p5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    .line 14
    iget p6, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput-object p5, p4, p6

    :cond_0
    float-to-double p6, p1

    .line 15
    invoke-static {p6, p7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->i(D)D

    move-result-wide p6

    double-to-float p1, p6

    float-to-double p6, p2

    invoke-static {p6, p7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->i(D)D

    move-result-wide p6

    double-to-float p2, p6

    float-to-double p3, p3

    invoke-static {p3, p4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->i(D)D

    move-result-wide p3

    double-to-float p3, p3

    invoke-virtual {p5, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->set(FFF)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 16
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    :cond_1
    return-void
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z
    .locals 5

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->f:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->e:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    sget-wide v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->d:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "\u6ca1\u6709\u59ff\u6001\u4f20\u611f\u5668\uff0c\u4e0d\u80fd\u8fdb\u884c\u59ff\u6001\u6321\u4f4d\u5b66\u4e60"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u59ff\u6001\u4f20\u611f\u5668\uff0c\u4e0d\u80fd\u8fdb\u884c\u59ff\u6001\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 6
    sput-object p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 p0, 0x1

    return p0
.end method

.method private static h(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v1, 0x0

    .line 2
    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u505c\u6b62\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v0, v1, v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b66\u4e60\u7ed3\u679c:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static i(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    int-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static j(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 2

    .line 1
    sget-wide p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->f:D

    sget-wide p4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->c:D

    sub-double/2addr p0, p4

    double-to-float p0, p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p0

    .line 2
    sget-wide p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->e:D

    sget-wide p4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->b:D

    sub-double/2addr p1, p4

    double-to-float p1, p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 3
    sget-wide p4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->d:D

    sget-wide v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->a:D

    sub-double/2addr p4, v0

    double-to-float p2, p4

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    .line 4
    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->l:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {p4, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->setValue(FFF)V

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 p1, 0x0

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 p4, -0x1

    const/4 p5, 0x0

    .line 6
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->h:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    array-length v1, v0

    if-ge p5, v1, :cond_2

    .line 7
    aget-object v0, v0, p5

    if-nez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->l:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distanceSqure(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F

    move-result v0

    cmpg-float v1, v0, p2

    if-gez v1, :cond_1

    .line 9
    invoke-static {p5}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p0

    move p4, p5

    move p2, v0

    :cond_1
    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 10
    :goto_2
    sget-object p5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->i:[I

    array-length v0, p5

    if-ge p2, v0, :cond_4

    if-ne p2, p4, :cond_3

    .line 11
    aget v0, p5, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p5, p2

    goto :goto_3

    .line 12
    :cond_3
    aput p1, p5, p2

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    if-ltz p4, :cond_5

    .line 13
    aget p1, p5, p4

    const/4 p2, 0x3

    if-lt p1, p2, :cond_5

    .line 14
    sput-object p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p0

    .line 15
    :cond_5
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p0, p1, :cond_6

    return-object p3

    .line 16
    :cond_6
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p0
.end method

.method public static k()Z
    .locals 9

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->f:D

    sget-wide v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->c:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2
    sget-wide v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->e:D

    sget-wide v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->b:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double v4, v0, v2

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpg-double v2, v4, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
