.class Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final d:D


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->d:D

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/gearsensor/f$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->d:D

    return-wide v0
.end method


# virtual methods
.method b(DDDD)D
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v14, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v16, v8

    move-wide/from16 v8, p7

    invoke-static/range {v2 .. v17}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->a(DDDDDDDD)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    sub-double v4, p1, p5

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v4, v4, v6

    sub-double v6, p3, p7

    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    .line 3
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->d:D

    return-wide v1

    .line 4
    :cond_0
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->d:D

    neg-double v1, v1

    return-wide v1

    :cond_1
    return-wide v2
.end method
