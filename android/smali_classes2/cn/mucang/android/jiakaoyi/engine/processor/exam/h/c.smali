.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private final b:Lcn/mucang/android/jiakaoyi/engine/i/e/b;

.field private c:Z

.field private final d:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/i/e/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/e/b;

    .line 3
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->d:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->c:Z

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/e/b;

    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/i/e/b;->trigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->a:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->a:J

    goto :goto_0

    .line 4
    :cond_0
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->a:J

    .line 5
    :cond_1
    :goto_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->a:J

    const/4 p3, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->d:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 6
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->c:Z

    .line 7
    :cond_3
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->c:Z

    if-eqz p3, :cond_4

    return p2

    :cond_4
    return p1
.end method
