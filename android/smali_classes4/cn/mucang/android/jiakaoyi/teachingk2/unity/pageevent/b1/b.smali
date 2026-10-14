.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    return-void
.end method

.method static synthetic a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->f(B)V

    return-void
.end method

.method private g()Z
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getBrake()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e6\u53d1\u5239\u8f66\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getBrake()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    const-string v1, " , "

    const-string v2, "\u89e6\u53d1\u505c\u8f66:"

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_0
    return p2

    .line 5
    :cond_1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_3
    return p2
.end method

.method public e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b49\u5f85\u89e3\u5239\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5239\u8f66\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    return-void
.end method

.method public h(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->e()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    if-eqz v0, :cond_4

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->l:J

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 7
    :cond_4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    .line 9
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p3

    .line 10
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    iput-object p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    iput p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    .line 15
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    .line 16
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    .line 17
    iget p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->direCarDot:I

    iput p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->direCarDot:I

    .line 18
    iget-boolean p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    iput-boolean p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    .line 19
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    invoke-direct {p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    .line 20
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    iput-wide v1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->l:J

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u521b\u5efa\u505c\u8f66\u70b9:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " , "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 22
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 3
    :cond_0
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_BRAKE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getBrakeNone()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    :cond_2
    return p1
.end method

.method public k(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e6\u53d1\u89e3\u5239\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e()V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b1/a;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
