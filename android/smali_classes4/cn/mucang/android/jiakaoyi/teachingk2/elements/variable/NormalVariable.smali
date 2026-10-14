.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"


# static fields
.field private static final TruckWidth:I = 0x96

.field private static final Width:I = 0x4b


# instance fields
.field public direCarDot:I

.field public forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public isRange:Z

.field public transient isSelect:Z

.field public key:J

.field public noAdvance:Z

.field public transient number:Ljava/lang/String;

.field public p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public reportKey:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    .line 6
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    .line 8
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/e0;->a:I

    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->position:I

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->noAdvance:Z

    return-void
.end method


# virtual methods
.method public createNormalPoint()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->createNormalPoint()V

    return-object p0
.end method

.method public setReportKey(J)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    return-object p0
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->createNormalPoint()V

    return-void
.end method
