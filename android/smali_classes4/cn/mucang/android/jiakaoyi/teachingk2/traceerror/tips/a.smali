.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 2
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v3, :cond_1

    if-eq v1, v4, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->UnableDaoKu:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {p0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-direct {v0, v3, v6, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_cant_in_ku:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 6
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-static {p0, v0, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v7, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v7, :cond_2

    if-ne v1, v4, :cond_2

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->UnableCeFang:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {p0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v0, v2, :cond_3

    iget v2, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v2, :cond_4

    :cond_3
    if-ne v1, v5, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->UnableCeFangDaoKuStep1:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-direct {v1, v0, v6, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    const-string p1, "\u7b2c\u4e00\u6b65\u9519\u8bef"

    .line 10
    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 11
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-static {p0, v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    .line 4
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-ne v2, v3, :cond_0

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 5
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    .line 10
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5206\u6790\u51fa\u6559\u5b66\u70b9\u540d\u79f0:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",step:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",subStep="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->teach:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",code:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->hashCode()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 2
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v4, :cond_0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->RightDistance:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    const/16 v1, 0x23

    invoke-direct {v0, v2, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_keep_right:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 6
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-static {p0, v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x2

    if-ne v0, v2, :cond_3

    if-ne v1, v4, :cond_3

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->RangeDistance:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->f(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    const/16 v6, 0xa

    invoke-direct {v1, v2, v6, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 10
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-ne p1, v5, :cond_2

    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_keep_left:I

    goto :goto_0

    :cond_2
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_keep_right:I

    :goto_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 12
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-static {p0, v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    goto/16 :goto_2

    .line 13
    :cond_3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v6, 0x14

    if-ne v0, v2, :cond_4

    if-ne v1, v4, :cond_4

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->RangeDistance:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-direct {v0, v2, v6, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 15
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_keep_right:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 16
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-static {p0, v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    goto :goto_2

    .line 18
    :cond_4
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v2, :cond_6

    if-ne v1, v4, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->RangeDistance:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 19
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-direct {v1, v0, v6, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 20
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-ne p1, v5, :cond_5

    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_keep_left:I

    goto :goto_1

    :cond_5
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_keep_right:I

    :goto_1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 22
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-static {p0, v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    check-cast p0, Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-ne v1, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static e(DDD)Ljava/lang/String;
    .locals 15

    .line 1
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4046800000000000L    # 45.0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_back_initial:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_1
    const-wide v0, 0x407f400000000000L    # 500.0

    cmpl-double v6, p2, v0

    if-lez v6, :cond_2

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_steering_right_full:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_2
    const-wide v0, -0x3f80c00000000000L    # -500.0

    cmpg-double v6, p2, v0

    if-gez v6, :cond_3

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_steering_left_full:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 5
    :cond_3
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v6, -0x3fb2000000000000L    # -60.0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    const-wide/16 v10, 0x0

    cmpg-double v12, v0, v2

    if-gez v12, :cond_b

    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_4

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_right_one:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_4
    const-wide/high16 v0, -0x3f8c000000000000L    # -320.0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_5

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_left_one:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_6

    .line 8
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_right_half:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_6
    const-wide v0, -0x3f9d400000000000L    # -150.0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_7

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_left_half:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_7
    cmpl-double v0, p2, v8

    if-lez v0, :cond_8

    .line 10
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_right_quarter:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    cmpg-double v0, p2, v6

    if-gez v0, :cond_9

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_left_quarter:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_9
    cmpl-double v0, p2, v10

    if-lez v0, :cond_a

    .line 12
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_right:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 13
    :cond_a
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_left:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 14
    :cond_b
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v12, 0x4072c00000000000L    # 300.0

    cmpl-double v14, v0, v12

    if-lez v14, :cond_17

    cmpl-double v0, p4, v10

    if-lez v0, :cond_c

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_right:I

    goto :goto_1

    :cond_c
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_left:I

    :goto_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double v8, p4, v6

    .line 16
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v1, v8, v2

    if-gtz v1, :cond_d

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_quarter_round:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_d
    add-double v6, p4, v6

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_e

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_quarter_round:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    const-wide v6, 0x4066800000000000L    # 180.0

    sub-double v8, p4, v6

    .line 20
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v1, v8, v2

    if-gtz v1, :cond_f

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_half_round:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    add-double v6, p4, v6

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_10

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_half_round:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_10
    const-wide v6, 0x4076800000000000L    # 360.0

    sub-double v8, p4, v6

    .line 24
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v1, v8, v2

    if-gtz v1, :cond_11

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_one_round:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_11
    add-double v6, p4, v6

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_12

    .line 27
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_one_round:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    const-wide v6, 0x4080e00000000000L    # 540.0

    sub-double v8, p4, v6

    .line 28
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v1, v8, v2

    if-lez v1, :cond_16

    const-wide v8, 0x4080400000000000L    # 520.0

    cmpl-double v1, p4, v8

    if-lez v1, :cond_13

    goto :goto_3

    :cond_13
    add-double v6, p4, v6

    .line 29
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v2

    if-lez v1, :cond_15

    const-wide v1, -0x3f7fc00000000000L    # -520.0

    cmpg-double v3, p4, v1

    if-gez v3, :cond_14

    goto :goto_2

    .line 30
    :cond_14
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_back_initial:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 31
    :cond_15
    :goto_2
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_one_half_round:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 32
    :cond_16
    :goto_3
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_one_half_round:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_17
    cmpl-double v0, p2, v12

    if-lez v0, :cond_18

    .line 33
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_right_one:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_18
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_19

    .line 34
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_right_half:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_19
    cmpl-double v0, p2, v8

    if-lez v0, :cond_1a

    .line 35
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_right_quarter:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1a
    const-wide v0, -0x3f8d400000000000L    # -300.0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_1b

    .line 36
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_left_one:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1b
    const-wide/high16 v0, -0x3fa2000000000000L    # -120.0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_1c

    .line 37
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_left_half:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1c
    cmpg-double v0, p2, v6

    if-gez v0, :cond_1d

    .line 38
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_turn_left_quarter:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1d
    cmpl-double v0, p2, v10

    if-lez v0, :cond_1e

    .line 39
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_to_turn_right:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 40
    :cond_1e
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_to_turn_left:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0
.end method

.method private static f(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;",
            ")",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    .line 5
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-ne v2, p1, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/util/List;III)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;III)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;-><init>()V

    .line 2
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;->step:I

    .line 3
    iput p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;->subStep:I

    .line 4
    iput p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;->stepDirection:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 7
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    instance-of p3, p2, Ljava/util/List;

    if-eqz p3, :cond_0

    .line 8
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 9
    instance-of v1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    if-eqz v1, :cond_1

    .line 10
    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->needShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 13
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;->steps:Ljava/util/List;

    :cond_3
    return-object v0
.end method

.method public static h(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/utils/b;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/utils/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static/range {p0 .. p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 3
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 5
    iget v0, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 6
    invoke-static {v4, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/l;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getVoiceModel()Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->shortVoice:Ljava/lang/String;

    move-object v3, v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 10
    :goto_1
    iget-object v0, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 11
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    .line 12
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v17

    const-wide v19, 0x408e080000000000L    # 961.0

    cmpg-double v8, v17, v19

    if-lez v8, :cond_d

    .line 13
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-object/from16 v16, v11

    const/4 v11, 0x1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v11, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmpl-double v1, v21, v23

    if-ltz v1, :cond_5

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto/16 :goto_6

    :cond_5
    add-int/lit8 v1, v2, -0x1

    .line 14
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    cmpg-double v8, v21, v19

    if-lez v8, :cond_c

    .line 15
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v8, v0, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    add-int/lit8 v2, v2, -0x3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v2, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    cmpg-double v2, v21, v23

    if-gez v2, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_b

    .line 16
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    add-int/lit8 v11, v2, 0x1

    .line 17
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 18
    invoke-virtual {v8, v0, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    move-object/from16 v18, v9

    invoke-virtual {v0, v12, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    cmpl-double v9, v21, v23

    if-gez v9, :cond_8

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    cmpg-double v9, v21, v19

    if-gez v9, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move v2, v11

    move-object/from16 v9, v18

    goto :goto_2

    .line 19
    :cond_8
    :goto_3
    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    cmpg-double v1, v19, v21

    if-gez v1, :cond_9

    move v0, v2

    move-object v1, v8

    move-object/from16 v2, p0

    .line 20
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->k(ILcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    goto :goto_4

    .line 21
    :cond_9
    invoke-virtual {v0, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    cmpg-double v9, v1, v21

    if-gez v9, :cond_a

    move v0, v11

    move-object v1, v12

    move-object/from16 v2, p0

    .line 22
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->k(ILcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    goto :goto_4

    .line 23
    :cond_a
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v1

    move-object v13, v10

    .line 24
    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 25
    iget-wide v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v19, v13

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v7, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v13, v7

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    iget-wide v4, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v9

    mul-double v13, v13, v4

    iget-wide v4, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v4, v7

    div-double/2addr v13, v4

    add-double/2addr v9, v13

    iput-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 26
    invoke-interface {v6, v11, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v11

    move-object/from16 v2, p0

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    .line 27
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->k(ILcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    goto :goto_7

    :cond_b
    move-object/from16 v18, v9

    :goto_4
    move-object/from16 v19, v10

    goto :goto_7

    :cond_c
    :goto_5
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 28
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move v0, v1

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->k(ILcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    goto :goto_7

    :cond_d
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v16, v11

    :goto_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-object/from16 v2, p0

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->k(ILcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    :goto_7
    move-object/from16 v7, p2

    move-object/from16 v11, v16

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_0

    :cond_e
    move-object v0, v7

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    const/4 v3, 0x0

    invoke-static {v6, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {v6, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    return-object v6

    :cond_f
    :goto_8
    const/4 v3, 0x0

    return-object v3
.end method

.method private static i(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v0, v1, :cond_3

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v0, v1, :cond_3

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v0, v1, :cond_3

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v0, v1, :cond_3

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v1, v2, :cond_3

    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq p0, v2, :cond_3

    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v0, p0, :cond_3

    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 2
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static k(ILcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            ")V"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    add-int/lit8 v5, v0, -0x5

    const/4 v6, 0x0

    .line 1
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    add-int/lit8 v9, v0, 0x5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v9, v5

    :cond_0
    if-ge v9, v7, :cond_4

    .line 3
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    add-int/lit8 v9, v9, 0x1

    .line 4
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 5
    iget-byte v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    if-nez v12, :cond_2

    iget-byte v12, v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    if-ne v12, v8, :cond_2

    iget-short v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    sget-object v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v13, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v12, v13, :cond_2

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Honk:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-direct {v0, v2, v6, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 7
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v2, p3

    goto :goto_0

    :cond_1
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_honk:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 8
    invoke-static {v1, v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    return-void

    .line 9
    :cond_2
    iget-byte v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->handbrake:B

    if-nez v12, :cond_0

    iget-byte v11, v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->handbrake:B

    if-ne v11, v8, :cond_0

    iget-short v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v10, v11, :cond_0

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->HandBrake:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-direct {v0, v2, v6, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 11
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v2, p3

    goto :goto_1

    :cond_3
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_handbrake:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 12
    invoke-static {v1, v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    return-void

    .line 13
    :cond_4
    invoke-static/range {p4 .. p4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->i(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v9

    move v10, v5

    :goto_2
    if-eqz v9, :cond_10

    if-ge v10, v7, :cond_10

    .line 14
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    add-int/lit8 v13, v10, 0x1

    .line 15
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 16
    iget-byte v15, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    if-nez v15, :cond_5

    iget-byte v11, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    if-eq v11, v8, :cond_7

    :cond_5
    if-ne v15, v8, :cond_6

    iget-byte v11, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    if-ne v11, v8, :cond_6

    sget-object v11, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Light:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v2, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    if-nez v10, :cond_8

    iget-byte v10, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    if-ne v10, v8, :cond_8

    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Light:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    .line 17
    invoke-static {v2, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 18
    :cond_7
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Light:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v9, v10, v11, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 19
    sget v10, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_open_left_light:I

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 20
    invoke-static {v1, v9, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    goto/16 :goto_5

    .line 21
    :cond_8
    iget-byte v10, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    if-nez v10, :cond_9

    iget-byte v11, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    const/4 v15, 0x2

    if-eq v11, v15, :cond_a

    goto :goto_3

    :cond_9
    const/4 v15, 0x2

    :goto_3
    if-ne v10, v15, :cond_b

    iget-byte v10, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    if-ne v10, v15, :cond_b

    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Light:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v2, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 22
    :cond_a
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Light:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v9, v10, v11, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 23
    sget v10, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_open_right_light:I

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 24
    invoke-static {v1, v9, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    goto :goto_5

    .line 25
    :cond_b
    iget-byte v10, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    const/4 v11, 0x3

    if-nez v10, :cond_c

    iget-byte v12, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    if-eq v12, v11, :cond_d

    :cond_c
    if-ne v10, v11, :cond_f

    iget-byte v10, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    if-ne v10, v11, :cond_f

    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Light:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v2, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->j(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 26
    :cond_d
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Light:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v0, v2, v5, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 27
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v2, p3

    goto :goto_4

    :cond_e
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_open_warning_light:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 28
    invoke-static {v1, v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    return-void

    :cond_f
    move v10, v13

    goto/16 :goto_2

    .line 29
    :cond_10
    :goto_5
    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v1, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v10

    .line 30
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-eq v0, v11, :cond_11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4099000000000000L    # 1600.0

    cmpg-double v15, v11, v13

    if-gez v15, :cond_13

    :cond_11
    if-nez v10, :cond_13

    .line 31
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-direct {v0, v9, v6, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 32
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v2, p3

    goto :goto_6

    :cond_12
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_tip_stop_car:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 33
    invoke-static {v1, v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    return-void

    :cond_13
    if-eqz v10, :cond_18

    const/4 v9, -0x1

    const/4 v10, -0x1

    :cond_14
    if-ge v5, v7, :cond_16

    .line 34
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    add-int/lit8 v5, v5, 0x1

    .line 35
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    if-ne v10, v9, :cond_15

    .line 36
    iget-byte v10, v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    .line 37
    :cond_15
    iget-byte v11, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    if-eq v10, v11, :cond_14

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-eq v11, v12, :cond_14

    goto :goto_7

    :cond_16
    const/4 v11, -0x1

    :goto_7
    if-eq v10, v11, :cond_18

    if-eq v11, v9, :cond_18

    if-eq v10, v9, :cond_18

    .line 38
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Gear:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->m(I)I

    move-result v5

    invoke-direct {v0, v2, v5, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 39
    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->m(I)I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    .line 40
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v2, p3

    goto :goto_8

    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6302"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->m(I)I

    move-result v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 41
    invoke-static {v1, v0, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    return-void

    :cond_18
    add-int/lit8 v5, v0, -0xa

    .line 42
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 43
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    add-int/lit8 v9, v0, 0x14

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 44
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v9, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v9, v9

    sget-wide v11, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v9, v9, v11

    double-to-int v9, v9

    move v10, v0

    const/4 v11, 0x0

    :goto_9
    if-le v10, v5, :cond_1b

    add-int/lit8 v12, v10, -0x1

    .line 45
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 46
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 47
    iget-short v14, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v14, v14

    sget-wide v17, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v14, v14, v17

    double-to-int v14, v14

    iget-short v12, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    move/from16 v19, v7

    int-to-double v6, v12

    mul-double v6, v6, v17

    double-to-int v6, v6

    sub-int/2addr v14, v6

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v8, :cond_19

    add-int/2addr v11, v8

    const/4 v6, 0x2

    goto :goto_a

    :cond_19
    const/4 v6, 0x2

    const/4 v11, 0x0

    :goto_a
    if-lt v11, v6, :cond_1a

    .line 48
    iget-short v5, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v5, v5

    sget-wide v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v5, v5, v9

    double-to-int v9, v5

    move/from16 v5, v19

    goto :goto_b

    :cond_1a
    add-int/lit8 v10, v10, -0x1

    move/from16 v7, v19

    const/4 v6, 0x0

    goto :goto_9

    :cond_1b
    move v5, v7

    .line 49
    :goto_b
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v6, v6

    sget-wide v10, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v6, v6, v10

    double-to-int v6, v6

    add-int/2addr v0, v8

    const/4 v7, 0x0

    :goto_c
    if-gt v0, v5, :cond_1e

    add-int/lit8 v10, v0, -0x1

    .line 50
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 52
    iget-short v12, v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v12, v12

    sget-wide v17, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v12, v12, v17

    double-to-int v12, v12

    iget-short v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v13, v10

    mul-double v13, v13, v17

    double-to-int v10, v13

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v8, :cond_1c

    add-int/2addr v7, v8

    goto :goto_d

    :cond_1c
    const/4 v7, 0x0

    :goto_d
    const/4 v10, 0x2

    if-lt v7, v10, :cond_1d

    .line 53
    iget-short v12, v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v12, v12

    sget-wide v16, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v12, v12, v16

    move-object/from16 p0, v11

    int-to-double v10, v9

    sub-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x4051800000000000L    # 70.0

    cmpl-double v14, v10, v12

    if-lez v14, :cond_1d

    move-object/from16 v11, p0

    .line 54
    iget-short v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v5, v0

    sget-wide v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v5, v5, v7

    double-to-int v6, v5

    goto :goto_e

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    :goto_e
    sub-int v0, v6, v9

    .line 55
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v5, 0x46

    if-ge v2, v5, :cond_1f

    return-void

    .line 56
    :cond_1f
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-direct {v2, v5, v9, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    .line 57
    iput v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    .line 58
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p3

    goto :goto_f

    :cond_20
    int-to-double v3, v9

    int-to-double v5, v6

    int-to-double v7, v0

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    invoke-static/range {v16 .. v21}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->e(DDD)Ljava/lang/String;

    move-result-object v0

    :goto_f
    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Z)V

    return-void
.end method

.method public static l(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/utils/b;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static m(I)I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-eq p0, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p0, v0, :cond_2

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    return p0

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt p0, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-gt p0, v0, :cond_2

    .line 7
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    :cond_2
    :goto_0
    return p0
.end method

.method public static n(Ljava/util/List;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 4
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_4

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-static {v4, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    :goto_2
    if-ne v3, v5, :cond_5

    goto/16 :goto_5

    .line 6
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    add-int/lit8 v5, v2, -0x1

    .line 7
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v5, v5

    sget-wide v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v9, v5, v7

    add-int/lit8 v5, v3, -0x2

    .line 8
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v5, v5

    sget-wide v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    mul-double v11, v5, v7

    sub-double v13, v11, v9

    .line 9
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    if-nez v5, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    check-cast v5, Ljava/util/List;

    .line 11
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    .line 12
    iget-object v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    sget-object v15, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-ne v8, v15, :cond_7

    goto :goto_3

    :cond_8
    move-object v6, v7

    :goto_3
    if-nez v6, :cond_9

    goto/16 :goto_0

    :cond_9
    double-to-int v5, v9

    .line 13
    iput v5, v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    double-to-int v5, v11

    .line 14
    iput v5, v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    sub-double v15, v9, v11

    .line 15
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    cmpg-double v5, v15, v17

    if-gez v5, :cond_a

    .line 16
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    iput-object v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19
    :cond_a
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->teach:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getVoiceModel()Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 20
    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->shortVoice:Ljava/lang/String;

    .line 21
    :cond_b
    invoke-static {v7}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    invoke-static/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->e(DDD)Ljava/lang/String;

    move-result-object v7

    :goto_4
    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trim wheel : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_d
    move v2, v3

    goto/16 :goto_0

    :cond_e
    :goto_5
    return-void
.end method
