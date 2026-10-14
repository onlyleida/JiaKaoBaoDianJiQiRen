.class public Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;

.field private b:Z

.field private c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private d:J

.field private e:Z

.field private final f:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->b:Z

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->d:J

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->e:Z

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->f:[I

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->f:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 2
    aput v1, v0, v2

    const/4 v2, 0x2

    .line 3
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 4
    aput v1, v0, v2

    const/4 v2, 0x4

    .line 5
    aput v1, v0, v2

    const/4 v2, 0x5

    .line 6
    aput v1, v0, v2

    return-void
.end method

.method private b(ZZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;IFJLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, p1, :cond_2

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, p1, :cond_2

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, p2, :cond_2

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearS:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, p2, :cond_2

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object p3
.end method

.method private c(ZZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;IFJLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p3

    :cond_0
    if-eqz p2, :cond_3

    .line 2
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->d:J

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-gtz p5, :cond_1

    .line 3
    iput-wide p6, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->d:J

    .line 4
    :cond_1
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->d:J

    sub-long/2addr p6, p1

    const-wide/16 p1, 0x1f4

    cmp-long p3, p6, p1

    if-ltz p3, :cond_2

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p1

    :cond_2
    return-object p8

    :cond_3
    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->d:J

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p3

    .line 8
    :cond_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, p1, :cond_5

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p3

    .line 9
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->b()Lcn/mucang/android/jiakaoyi/framework/utils/a0;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;

    int-to-float p2, p4

    invoke-virtual {p1, p5, p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->b(FF)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    .line 11
    :cond_6
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p1
.end method


# virtual methods
.method public d(ZZZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;IFJLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 10

    move-object v9, p0

    move/from16 v5, p6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    .line 2
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->b(ZZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;IFJLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 4
    iput-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->e:Z

    .line 5
    iput-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->b:Z

    .line 6
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->c()V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->a()V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    :cond_2
    if-eqz p3, :cond_3

    .line 9
    iput-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->b:Z

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->a()V

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 12
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->b()Lcn/mucang/android/jiakaoyi/framework/utils/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/a0;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_4

    .line 13
    iput-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->b:Z

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->a()V

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 16
    :cond_4
    iget-boolean v1, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->b:Z

    if-nez v1, :cond_5

    iget-boolean v1, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->e:Z

    if-eqz v1, :cond_5

    .line 17
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 18
    :cond_5
    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;

    move v4, p5

    int-to-float v2, v4

    invoke-virtual {v1, v5, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->a(FF)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v2, -0x1

    .line 19
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 20
    :goto_0
    iget-object v6, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->f:[I

    array-length v7, v6

    if-ge v4, v7, :cond_9

    if-ne v4, v1, :cond_6

    .line 21
    aget v7, v6, v4

    add-int/2addr v7, v0

    aput v7, v6, v4

    .line 22
    aget v7, v6, v4

    const/16 v8, 0xa

    if-le v7, v8, :cond_7

    .line 23
    aput v8, v6, v4

    goto :goto_1

    .line 24
    :cond_6
    aget v7, v6, v4

    sub-int/2addr v7, v0

    aput v7, v6, v4

    .line 25
    aget v7, v6, v4

    if-gez v7, :cond_7

    .line 26
    aput v3, v6, v4

    .line 27
    :cond_7
    :goto_1
    aget v7, v6, v4

    if-le v7, v5, :cond_8

    .line 28
    aget v5, v6, v4

    move v2, v4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    if-nez v2, :cond_a

    const/16 v0, 0x8

    goto :goto_2

    :cond_a
    const/4 v0, 0x5

    :goto_2
    if-le v5, v0, :cond_c

    .line 29
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    .line 30
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_b

    .line 31
    iput-boolean v3, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->b:Z

    .line 32
    iput-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_b
    return-object v0

    .line 33
    :cond_c
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 34
    :cond_d
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isManual()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p4

    :cond_e
    return-object p9

    :cond_f
    :goto_3
    move v4, p5

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    .line 35
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->c(ZZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;IFJLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    return-object v0
.end method
