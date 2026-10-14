.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->a:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->b:I

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->c:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->c:Z

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-wide p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;->repeatTime:J

    const-wide/16 p5, 0x0

    const/4 v0, 0x1

    cmp-long v1, p3, p5

    if-gtz v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->c:Z

    if-eqz p3, :cond_3

    .line 3
    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->a:J

    cmp-long v1, p3, p5

    if-nez v1, :cond_1

    .line 4
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->a:J

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->a:J

    sub-long/2addr p2, p4

    iget-wide p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;->repeatTime:J

    div-long/2addr p2, p4

    long-to-int p1, p2

    .line 6
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->b:I

    if-le p1, p2, :cond_2

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->b:I

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    return v0
.end method
