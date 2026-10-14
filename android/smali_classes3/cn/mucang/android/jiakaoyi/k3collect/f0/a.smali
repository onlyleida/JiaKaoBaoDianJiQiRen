.class public final Lcn/mucang/android/jiakaoyi/k3collect/f0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002JL\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00102\u0006\u0010\u0014\u001a\u00020\u000c2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00102\u0006\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0011H\u0002J&\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\nJ(\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/helper/CollectCurveEditHelper;",
        "",
        "()V",
        "deleteSelectPos",
        "",
        "converter",
        "Lcn/mucang/android/jiakaoyi/signal/proj/DefaultConverter;",
        "srcData",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;",
        "selectPos",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "querySelectPosIndex",
        "",
        "posList",
        "",
        "splitCreateLines",
        "",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;",
        "selectCurve",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "selectPosIndex",
        "otherCurve",
        "otherCurveSelectIndex",
        "otherCurveSelectFooter",
        "splitSHCurveByPos",
        "targetPos",
        "splitSingleCurveByPos",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;",
        "MapCollectK3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/k3collect/f0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/f0/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v1, v3, v5

    if-gez v1, :cond_0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private final c(Ljava/util/List;ILjava/util/List;ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;I",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;I",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-interface {p1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, p2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x1

    add-int/2addr p4, p2

    .line 7
    invoke-interface {p3, v3, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p3, p4, p5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {v4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {p6}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    const/4 p5, 0x0

    .line 13
    iput-object p5, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 14
    iput-object v1, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v5, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    iput-object p1, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    .line 18
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object p1, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 20
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_1

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    .line 21
    invoke-virtual {p6}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object p1

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    .line 22
    iput-object p5, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 23
    iput-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    .line 24
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 26
    iput-object v4, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    .line 27
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-interface {v4, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 29
    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-gt p4, v1, :cond_2

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-le p4, v1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    .line 30
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/signal/i/b;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 5

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectPos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 2
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "posList"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result p1

    .line 4
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v3, :cond_1

    if-ltz p1, :cond_1

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-gt p1, p3, :cond_1

    .line 5
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    :cond_1
    return v2

    .line 7
    :cond_2
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    if-eqz v0, :cond_8

    .line 8
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v4, "posList1"

    .line 9
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result v0

    .line 10
    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_5

    if-ltz v0, :cond_5

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v0, v4, :cond_5

    .line 11
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v3, :cond_3

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    return v2

    .line 13
    :cond_5
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "posList2"

    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result p1

    .line 15
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v3, :cond_8

    if-ltz p1, :cond_8

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_8

    .line 16
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v3, :cond_6

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    return v2

    :cond_8
    return v1
.end method

.method public final d(Lcn/mucang/android/jiakaoyi/signal/i/b;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/i/b;",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v1, p3

    const-string v2, "converter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "srcData"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "targetPos"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    .line 2
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    const/4 v4, 0x0

    .line 3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v5, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v8

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v4

    const-string v11, "curveList2"

    cmpl-double v12, v8, v4

    if-lez v12, :cond_0

    .line 4
    invoke-static {v2, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/s;->A0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 5
    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    :cond_0
    move-object v4, v2

    .line 6
    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-static {v0, v4}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const-string v8, "posList1"

    .line 8
    invoke-static {v2, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result v8

    const-string v9, "posList2"

    .line 9
    invoke-static {v5, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v5, v1}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result v9

    const-string v12, "converter.gaussToGps(otherCurveSelectFooter)"

    const-string v13, "curveList1"

    if-lez v8, :cond_4

    if-lez v8, :cond_8

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    if-ge v8, v2, :cond_8

    .line 11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_3

    :goto_0
    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v14, v10, -0x1

    .line 12
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    invoke-static {v1, v15, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 15
    invoke-static {v6, v15, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    if-lt v9, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v6, p2

    move v10, v9

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v6, 0x0

    const/4 v14, -0x1

    :goto_2
    if-eqz v6, :cond_8

    if-lez v14, :cond_8

    .line 16
    invoke-static {v3, v13}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v4, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/signal/i/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v5

    invoke-static {v5, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v8

    move-object v3, v4

    move v4, v14

    move-object/from16 v6, p2

    .line 19
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->c(Ljava/util/List;ILjava/util/List;ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    if-lez v9, :cond_8

    if-lez v9, :cond_8

    .line 20
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    if-ge v9, v5, :cond_8

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v10, v5, :cond_7

    :goto_3
    add-int/lit8 v6, v10, 0x1

    add-int/lit8 v8, v10, -0x1

    .line 22
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    invoke-static {v1, v14, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 25
    invoke-static {v15, v14, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v10

    if-eqz v10, :cond_5

    move/from16 v16, v8

    goto :goto_5

    :cond_5
    if-lt v6, v5, :cond_6

    goto :goto_4

    :cond_6
    move v10, v6

    goto :goto_3

    :cond_7
    :goto_4
    const/4 v15, 0x0

    const/16 v16, -0x1

    :goto_5
    if-eqz v15, :cond_8

    if-lez v16, :cond_8

    .line 26
    invoke-static {v4, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v3, v13}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v15}, Lcn/mucang/android/jiakaoyi/signal/i/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v5

    invoke-static {v5, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v9

    move/from16 v4, v16

    move-object/from16 v6, p2

    .line 29
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->c(Ljava/util/List;ILjava/util/List;ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(Lcn/mucang/android/jiakaoyi/signal/i/b;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/i/b;",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;",
            ">;"
        }
    .end annotation

    const-string v0, "srcData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectPos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "posList"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/f0/a;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result p1

    .line 3
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-le p3, v1, :cond_2

    if-lez p1, :cond_2

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x1

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_2

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    .line 7
    iput-object v0, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 8
    iput-object v3, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    .line 10
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v7, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v3, v4, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3, p1, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object p2

    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    .line 14
    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 15
    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    .line 17
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p3

    :cond_2
    return-object v0
.end method
