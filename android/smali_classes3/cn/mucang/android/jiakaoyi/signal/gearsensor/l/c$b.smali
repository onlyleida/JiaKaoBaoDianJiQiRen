.class Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:D

.field b:D

.field c:D

.field d:I

.field e:D

.field f:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(DDDD)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->c:D

    sub-double v3, p1, v1

    sub-double v5, v1, p5

    mul-double v3, v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_7

    sub-double v3, p1, p5

    .line 2
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->e:D

    mul-double v7, v7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-double v10, v7, v5

    if-gez v10, :cond_0

    .line 3
    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->f:F

    goto/16 :goto_4

    :cond_0
    sub-double v5, p3, p7

    sub-double v1, v1, p5

    mul-double v5, v5, v1

    div-double/2addr v5, v3

    add-double v5, v5, p7

    .line 4
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->d:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_1

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 5
    :goto_0
    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v7, :cond_2

    const/high16 v4, 0x40400000    # 3.0f

    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    .line 6
    :cond_2
    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v7, :cond_3

    const/high16 v4, 0x40a00000    # 5.0f

    goto :goto_1

    .line 7
    :cond_3
    :goto_2
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->b:D

    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->a:D

    sub-double v12, v7, v10

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    cmpg-double v1, v12, v14

    if-gez v1, :cond_4

    cmpl-float v1, v2, v9

    if-nez v1, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    float-to-double v3, v3

    add-double/2addr v3, v7

    cmpg-double v1, v5, v3

    if-gez v1, :cond_5

    float-to-double v1, v2

    sub-double v1, v10, v1

    cmpl-double v3, v5, v1

    if-lez v3, :cond_5

    const v1, 0x3ecccccd    # 0.4f

    .line 8
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->f:F

    const-string v1, "Sheep"

    const-string v2, "\u7ecf\u8fc7\u5fc5\u7ecf\u7ebf"

    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    add-double/2addr v7, v14

    cmpg-double v1, v5, v7

    if-gez v1, :cond_6

    sub-double/2addr v10, v14

    cmpl-double v1, v5, v10

    if-lez v1, :cond_6

    const v1, 0x3f666666    # 0.9f

    .line 10
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->f:F

    goto :goto_4

    .line 11
    :cond_6
    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->f:F

    :cond_7
    :goto_4
    return-void
.end method
