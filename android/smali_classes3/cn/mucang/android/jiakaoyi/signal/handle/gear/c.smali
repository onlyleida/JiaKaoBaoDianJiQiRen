.class public Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[F

.field private static final c:[F

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F

.field private static final g:[[F


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->b:[F

    new-array v2, v0, [F

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->c:[F

    new-array v3, v0, [F

    .line 3
    fill-array-data v3, :array_2

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->d:[F

    new-array v4, v0, [F

    .line 4
    fill-array-data v4, :array_3

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->e:[F

    new-array v5, v0, [F

    .line 5
    fill-array-data v5, :array_4

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->f:[F

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_5

    const-class v6, F

    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->g:[[F

    .line 7
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput-object v1, v0, v6

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput-object v2, v0, v1

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput-object v3, v0, v1

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput-object v4, v0, v1

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput-object v5, v0, v1

    return-void

    :array_0
    .array-data 4
        0x0
        0x42000000    # 32.0f
    .end array-data

    :array_1
    .array-data 4
        0x40000000    # 2.0f
        0x42200000    # 40.0f
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0x42740000    # 61.0f
    .end array-data

    :array_3
    .array-data 4
        0x40c00000    # 6.0f
        0x42aa0000    # 85.0f
    .end array-data

    :array_4
    .array-data 4
        0x41000000    # 8.0f
        0x43480000    # 200.0f
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->g()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 3
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    goto/16 :goto_7

    :cond_1
    div-float v5, v2, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x5

    if-gt v8, v10, :cond_9

    .line 4
    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v10

    .line 5
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    if-eqz v11, :cond_8

    .line 6
    iget v12, v11, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    const/4 v13, 0x0

    cmpl-float v14, v12, v13

    if-lez v14, :cond_8

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    cmpl-float v13, v11, v13

    if-lez v13, :cond_8

    if-ne v8, v7, :cond_2

    cmpl-float v13, v5, v12

    if-lez v13, :cond_2

    goto :goto_4

    .line 7
    :cond_2
    iget v9, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ltz v9, :cond_3

    sget-object v13, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->g:[[F

    array-length v14, v13

    if-ge v9, v14, :cond_3

    .line 8
    aget-object v9, v13, v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    aget v13, v9, v6

    cmpg-float v13, v1, v13

    if-ltz v13, :cond_6

    aget v9, v9, v7

    cmpl-float v9, v1, v9

    if-lez v9, :cond_5

    goto :goto_2

    :cond_5
    float-to-double v13, v5

    move v15, v5

    float-to-double v4, v11

    const-wide v16, 0x3fee147ae147ae14L    # 0.94

    mul-double v4, v4, v16

    cmpl-double v9, v13, v4

    if-ltz v9, :cond_7

    float-to-double v4, v12

    const-wide v11, 0x3ff0f5c28f5c28f6L    # 1.06

    mul-double v4, v4, v11

    cmpg-double v9, v13, v4

    if-gtz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    :goto_2
    move v15, v5

    :cond_7
    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    move v15, v5

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v5, v15

    goto :goto_0

    :cond_9
    const/4 v10, 0x0

    :goto_4
    if-eqz v9, :cond_b

    if-eqz v10, :cond_a

    return-object v10

    .line 10
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    .line 11
    :cond_b
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->a:I

    add-int/2addr v4, v7

    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->a:I

    const/4 v5, 0x6

    if-le v4, v5, :cond_12

    const v4, 0x4cbebc20    # 1.0E8f

    .line 12
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    .line 14
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->lines:Ljava/util/List;

    if-eqz v9, :cond_c

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_5

    .line 15
    :cond_d
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 16
    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ltz v9, :cond_e

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->g:[[F

    array-length v12, v11

    if-ge v9, v12, :cond_e

    .line 17
    aget-object v9, v11, v9

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    :goto_6
    if-nez v9, :cond_f

    goto :goto_5

    .line 18
    :cond_f
    aget v11, v9, v6

    cmpg-float v11, v1, v11

    if-ltz v11, :cond_c

    aget v9, v9, v7

    cmpl-float v9, v1, v9

    if-lez v9, :cond_10

    goto :goto_5

    .line 19
    :cond_10
    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->lines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    invoke-virtual {v8, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v8

    cmpg-float v9, v8, v4

    if-gez v9, :cond_c

    .line 20
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 21
    iput v6, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->a:I

    move-object v10, v4

    move v4, v8

    goto :goto_5

    :cond_11
    return-object v10

    :cond_12
    const/4 v1, 0x0

    return-object v1

    :cond_13
    :goto_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public b(FF)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 9

    float-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->g()Ljava/util/Map;

    move-result-object v0

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 5
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    float-to-double v5, v2

    const-wide v7, 0x3fee666666666666L    # 0.95

    mul-double v5, v5, v7

    cmpl-double v2, p1, v5

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 6
    :goto_0
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    float-to-double v4, v0

    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    mul-double v4, v4, v6

    cmpg-double v0, p1, v4

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    return-object v3

    :cond_4
    :goto_2
    return-object v4
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/c;->a:I

    return-void
.end method
