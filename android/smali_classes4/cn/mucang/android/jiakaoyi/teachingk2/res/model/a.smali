.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public e:Z

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;DILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DI",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    if-nez p4, :cond_0

    const/4 p4, 0x2

    .line 3
    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    .line 4
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 5
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide/high16 p3, 0x4044000000000000L    # 40.0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    .line 6
    :goto_0
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->e:Z

    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->f:J

    if-nez p5, :cond_2

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    :goto_1
    return-void
.end method
