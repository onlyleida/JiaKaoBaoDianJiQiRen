.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# instance fields
.field private a:I

.field private b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez p2, :cond_3

    .line 2
    instance-of p2, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz p2, :cond_0

    .line 3
    check-cast p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object p2, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 4
    :cond_0
    instance-of p2, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz p2, :cond_1

    .line 5
    check-cast p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p2, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 6
    :cond_1
    instance-of p2, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    if-eqz p2, :cond_2

    .line 7
    check-cast p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    iget-object p2, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    :cond_2
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz p2, :cond_3

    iget-object p3, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p3, :cond_3

    .line 9
    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p3, p4, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->c:I

    .line 10
    :cond_3
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->c:I

    if-gtz p2, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p4, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    double-to-int p2, p2

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p5, p4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p3, p5, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p3

    double-to-int p3, p3

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 14
    iget p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->c:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p3, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    const/4 p4, 0x2

    const/4 p5, 0x1

    if-ge p2, p3, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    .line 15
    :goto_1
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->a:I

    if-eq p1, p2, :cond_7

    if-ne p1, p5, :cond_6

    const/4 p4, 0x1

    .line 16
    :cond_6
    iput-byte p4, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 17
    invoke-interface {p0, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 18
    :cond_7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;->a:I

    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    return-void
.end method
