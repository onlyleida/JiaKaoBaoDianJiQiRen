.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->e:Z

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->d:Ljava/util/List;

    return-void
.end method

.method private f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    if-ne v1, v2, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    return v2

    .line 3
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->b:I

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    .line 3
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const-string v1, "\u9a76\u5165\u9879\u76ee"

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {p1, v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 3
    iput-boolean p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->d:Z

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->f()Z

    move-result p1

    const-string p2, "\u53f3\u51fa\u5e93"

    const-string v1, "\u5de6\u5012\u5e93"

    const-string v2, "\u5de6\u51fa\u5e93"

    const-string v3, "\u53f3\u5012\u5e93"

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-direct {p1, v1, v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-direct {p1, p2, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p1, v3, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p1, v2, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-direct {p1, v3, v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 11
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-direct {p1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {p1, v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 13
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-direct {p1, p2, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p1, p2, :cond_2

    .line 15
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-direct {p1, v1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 16
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "\u5012\u5165\u4fa7\u65b9"

    invoke-direct {p1, v1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    .line 17
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "\u9a76\u51fa\u4fa7\u65b9"

    invoke-direct {p1, v1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    goto :goto_0

    .line 18
    :cond_2
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;)V

    :goto_0
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->e:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;

    .line 3
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->c(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
