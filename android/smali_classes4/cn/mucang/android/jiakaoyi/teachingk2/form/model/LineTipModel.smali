.class public Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;
.super Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;
.source "SourceFile"


# static fields
.field public static final TypeAngle:I = 0x5

.field public static final TypeArea:I = 0x4

.field public static final TypeDot:I = 0x3

.field public static final TypeFrame:I = 0x1

.field public static final TypeLine:I = 0x2


# instance fields
.field public center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public color:I

.field public degree:I

.field public duration:I

.field public transient forDraw:Z

.field public lineType:I

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public objectName:Ljava/lang/String;

.field public offTime:I

.field public onTime:I

.field public pointIndex:I

.field public pointIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;->type:I

    return-void
.end method

.method public static createDefaultFrameModel(II)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->Frame:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->getType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lineType:I

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p0, v1, :cond_1

    const/4 p0, 0x3

    const-wide v1, 0x407cc00000000000L    # 460.0

    if-ne p1, p0, :cond_0

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v3, -0x3f7b800000000000L    # -656.0

    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v3, 0x408b080000000000L    # 865.0

    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v1, 0x4060a00000000000L    # 133.0

    const-wide v3, 0x4092380000000000L    # 1166.0

    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    const/16 p0, 0x5a

    .line 7
    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->degree:I

    const p0, 0x124f80

    .line 8
    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->onTime:I

    const/4 p1, 0x0

    .line 9
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->offTime:I

    .line 10
    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->duration:I

    return-object v0
.end method


# virtual methods
.method public addPoints(Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;Landroid/util/SparseArray;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lines:Ljava/util/List;

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lineType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1, p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;->a(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;Landroid/util/SparseArray;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->objectName:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->find(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lines:Ljava/util/List;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->createIndexMap()Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->c(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    .line 7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndex:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p1, :cond_4

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lines:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndexList:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p3, :cond_3

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lines:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public getIndexDesc()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndexList:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndexList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 4
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "-"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndexList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
