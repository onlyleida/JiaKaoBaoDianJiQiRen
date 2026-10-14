.class Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 4
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
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->a:Z

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez p2, :cond_1

    .line 3
    move-object p2, p7

    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p5

    iget-object p5, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p8

    iget-object p8, p8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p8, p8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p9

    iget-object p9, p9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p9, p9, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p5, p8, p9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p8

    .line 5
    iget-object p5, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p5

    .line 6
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    sub-double/2addr p8, v0

    .line 7
    invoke-static {p5, p2, p8, p9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-virtual {p5, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p2, p5, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p8

    iget-object p8, p8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p5, p8, p9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p8

    const-wide/16 v0, 0x0

    cmpl-double p2, p8, v0

    if-lez p2, :cond_8

    .line 12
    check-cast p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p5, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p2, p5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p2

    const/4 p5, 0x1

    if-eqz p2, :cond_3

    .line 14
    iput-byte p5, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 15
    iget-object p2, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 16
    iget-object p3, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p7

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double p4, p7, v2

    if-lez p4, :cond_7

    .line 19
    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    cmpl-double p3, p1, v0

    if-lez p3, :cond_2

    .line 20
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_partial_left:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21
    :cond_2
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_partial_right:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p5

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    const-wide p8, 0x40ac200000000000L    # 3600.0

    const/4 p4, 0x2

    cmpg-double v0, p2, p8

    if-gez v0, :cond_4

    .line 23
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p3, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    iput-byte p4, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 25
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_early:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p3, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 27
    iput-byte p4, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 28
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_late:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p3, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 30
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p2, p7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 31
    :cond_6
    iput-byte p4, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 32
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_touch_ku_line:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 33
    :cond_7
    :goto_0
    iget-byte p1, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    if-eqz p1, :cond_8

    .line 34
    invoke-interface {p0, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 35
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i$c;->a:Z

    :cond_8
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
