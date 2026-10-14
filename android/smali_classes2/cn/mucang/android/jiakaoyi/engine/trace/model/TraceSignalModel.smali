.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;
.source "SourceFile"


# static fields
.field private static final DATA_LENGTH:I = 0xd


# instance fields
.field public d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Signal:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->tp:I

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->d:[I

    return-void
.end method

.method public static from(Lcn/mucang/android/jiakaoyi/signal/c/e;FLcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;
    .locals 13

    const/16 v0, 0xd

    new-array v1, v0, [I

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-int v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 3
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 4
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v6, 0x3

    aput v2, v1, v6

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    const/4 v7, 0x4

    aput v2, v1, v7

    const/4 v2, 0x5

    .line 6
    aget v8, v1, v2

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-boolean v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    invoke-static {v8, v3, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v2

    .line 7
    aget v8, v1, v2

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-boolean v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    invoke-static {v8, v4, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v2

    .line 8
    aget v8, v1, v2

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-boolean v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    invoke-static {v8, v5, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v2

    .line 9
    aget v8, v1, v2

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-boolean v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    invoke-static {v8, v6, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v2

    .line 10
    aget v8, v1, v2

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-boolean v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    invoke-static {v8, v7, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v2

    .line 11
    aget v8, v1, v2

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-boolean v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    invoke-static {v8, v2, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v2

    .line 12
    aget v8, v1, v2

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-boolean v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    const/4 v10, 0x6

    invoke-static {v8, v10, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v2

    .line 13
    aget v8, v1, v2

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    if-le v9, v2, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/4 v11, 0x7

    invoke-static {v8, v11, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v2

    .line 14
    aget v8, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v9, v12}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v9

    invoke-static {v8, v3, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v10

    .line 15
    aget v8, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v9, v12}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v9

    invoke-static {v8, v4, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v8

    aput v8, v1, v10

    .line 16
    aget v8, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v9, v12}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v9

    invoke-static {v8, v5, v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v5

    aput v5, v1, v10

    .line 17
    aget v5, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    invoke-static {v5, v6, v8}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v5

    aput v5, v1, v10

    .line 18
    aget v5, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v6, v8}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v6

    invoke-static {v5, v7, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v5

    aput v5, v1, v10

    .line 19
    aget v5, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v6

    invoke-static {v5, v2, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v2

    aput v2, v1, v10

    .line 20
    aget v2, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v5

    invoke-static {v2, v10, v5}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v2

    aput v2, v1, v10

    .line 21
    aget v2, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v5

    invoke-static {v2, v11, v5}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v2

    aput v2, v1, v10

    .line 22
    aget v2, v1, v10

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->ReturnLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v5

    const/16 v6, 0x8

    invoke-static {v2, v6, v5}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->set(IIZ)I

    move-result v2

    aput v2, v1, v10

    .line 23
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    aput v2, v1, v11

    .line 24
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    aput v2, v1, v6

    const/16 v2, 0x9

    .line 25
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    aput v5, v1, v2

    const/16 v2, 0xa

    .line 26
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput v5, v1, v2

    const/16 v2, 0xb

    .line 27
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->U:F

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->T:F

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->getRollWithPitch(FF)I

    move-result v5

    aput v5, v1, v2

    const/16 v2, 0xc

    .line 28
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->X:F

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->W:F

    invoke-static {v5, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->getRollWithPitch(FF)I

    move-result p0

    aput p0, v1, v2

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_3

    if-ne p0, v4, :cond_1

    .line 29
    aget v2, v1, p0

    div-int/lit8 v2, v2, 0x64

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->d:[I

    aget v5, v5, p0

    div-int/lit8 v5, v5, 0x64

    if-eq v2, v5, :cond_2

    goto :goto_2

    .line 30
    :cond_1
    aget v2, v1, p0

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->d:[I

    aget v5, v5, p0

    if-eq v2, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_4
    iput-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->d:[I

    .line 32
    iput p1, p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    return-object p2
.end method

.method private static getRollWithPitch(FF)I
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    int-to-short p0, p0

    .line 1
    div-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x3

    int-to-short p0, p0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-short p1, p1

    .line 2
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x3

    int-to-short p1, p1

    shl-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static set(IIZ)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;->d:[I

    return-void
.end method
