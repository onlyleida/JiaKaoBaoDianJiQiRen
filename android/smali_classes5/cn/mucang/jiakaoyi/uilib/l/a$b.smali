.class Lcn/mucang/jiakaoyi/uilib/l/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final b:D

.field private c:Z

.field private d:J

.field private e:D

.field private f:D


# direct methods
.method private constructor <init>(D)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->b:D

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(DLcn/mucang/jiakaoyi/uilib/l/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/l/a$b;-><init>(D)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/jiakaoyi/uilib/l/a$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c:Z

    return p0
.end method


# virtual methods
.method b(ZLcn/mucang/android/jiakaoyi/signal/pos/Pos;JZ)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/l/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-wide p3, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->d:J

    .line 4
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->e:D

    .line 5
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->f:D

    .line 6
    :cond_0
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->e:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->b:D

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_2

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->d:J

    sub-long/2addr p3, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, p3, v2

    if-lez p1, :cond_2

    if-eqz p5, :cond_1

    iget-wide p3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->f:D

    sub-double/2addr p3, v2

    .line 8
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double p1, p3, v2

    if-gez p1, :cond_2

    const-wide/high16 p3, 0x401c000000000000L    # 7.0

    cmpg-double p1, v0, p3

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c:Z

    .line 10
    :cond_2
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->f:D

    const-wide/high16 p1, 0x4022000000000000L    # 9.0

    cmpl-double p3, v0, p1

    if-lez p3, :cond_4

    if-eqz p5, :cond_4

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5012\u8f66\u706f\uff1a\u9ad8\u5ea6\u53d8\u5316\u6bd4\u8f83\u5927\uff0c\u6e05\u7a7a:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " , \u9608\u503c:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->b:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 p4, 0x0

    .line 14
    iput-wide p4, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->d:J

    .line 15
    iput-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->f:D

    iput-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->e:D

    :cond_4
    :goto_0
    return-void
.end method

.method c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->c:Z

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->d:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->f:D

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->e:D

    .line 4
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/l/a$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
