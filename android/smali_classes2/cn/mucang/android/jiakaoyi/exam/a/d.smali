.class public Lcn/mucang/android/jiakaoyi/exam/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public final b:J

.field public c:Z

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 3
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->c:Z

    .line 3
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->d:J

    .line 4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->e:J

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->c:Z

    if-eqz v0, :cond_3

    .line 6
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->d:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->d:J

    .line 8
    :cond_1
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->e:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->d:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->b:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->e:J

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lightOnTime "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->d:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ; deductTime "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; diffTime "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->e:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "dsh"

    invoke-static {v4, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->e:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->c:Z

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->d:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/a/d;->e:J

    return-void
.end method
