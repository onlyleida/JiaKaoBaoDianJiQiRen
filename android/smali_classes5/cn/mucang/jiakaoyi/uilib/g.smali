.class public final Lcn/mucang/jiakaoyi/uilib/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/StepGetter;",
        "",
        "()V",
        "getAllK3Step",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "getAllStep",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "getExamConfigStep",
        "siteId",
        "",
        "getK3TeachSteps",
        "getManualOrderConfig",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;",
        "getSpecificStep",
        "getStepIcon",
        "",
        "step",
        "saveManualOrderConfig",
        "",
        "list",
        "uilib_release"
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/g;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/g;->a:Lcn/mucang/jiakaoyi/uilib/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k3Steps()Ljava/util/List;

    move-result-object v0

    const-string v1, "k3Steps()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/g$b;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/g$b;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method

.method public static final b(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation

    const-string v0, "keMu"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/g$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object p0

    const-string v1, "k2Steps()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_6

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/g$e;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/g$e;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->motoSteps()Ljava/util/List;

    move-result-object p0

    const-string v1, "motoSteps()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 7
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ChangDi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_6

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/g$d;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/g$d;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 9
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->b2Steps()Ljava/util/List;

    move-result-object p0

    const-string v1, "b2Steps()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_6

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/g$c;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/g$c;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/g;->a()Ljava/util/List;

    move-result-object p0

    :cond_6
    :goto_2
    return-object p0
.end method

.method public static final c(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/g;->a:Lcn/mucang/jiakaoyi/uilib/g;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/g;->e(J)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->getShowInRoute()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    .line 10
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/g;->f()Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static final d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k3Steps()Ljava/util/List;

    move-result-object v0

    const-string v1, "k3Steps()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v4, v5, :cond_1

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TeShuQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v4, v5, :cond_1

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v4, v5, :cond_1

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v4, v5, :cond_1

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDaoChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v1}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/g$f;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/g$f;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method public static final f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/g;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final e(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "exam_site_"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    const-class p2, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/g$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_special_area:I

    goto/16 :goto_1

    .line 3
    :pswitch_1
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_biandaochaoche:I

    goto :goto_1

    .line 4
    :pswitch_2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_dengguang:I

    goto :goto_1

    .line 5
    :pswitch_3
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_zhunbei:I

    goto :goto_1

    .line 6
    :pswitch_4
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_zhixianxingshi:I

    goto :goto_1

    .line 7
    :pswitch_5
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_xuexiao:I

    goto :goto_1

    .line 8
    :pswitch_6
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_xiansu:I

    goto :goto_1

    .line 9
    :pswitch_7
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_tongguosuidao:I

    goto :goto_1

    .line 10
    :pswitch_8
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_tingcherangxing:I

    goto :goto_1

    .line 11
    :pswitch_9
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_lukouzuozhuanwan:I

    goto :goto_1

    .line 12
    :pswitch_a
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_lukouzhixing:I

    goto :goto_1

    .line 13
    :pswitch_b
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_lukouyouzhuanwan:I

    goto :goto_1

    .line 14
    :pswitch_c
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_linshitingche:I

    goto :goto_1

    .line 15
    :pswitch_d
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_kaobiantingche:I

    goto :goto_1

    .line 16
    :pswitch_e
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_jipowanlu:I

    goto :goto_1

    .line 17
    :pswitch_f
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_jinzhitingche:I

    goto :goto_1

    .line 18
    :pswitch_10
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_jiansu:I

    goto :goto_1

    .line 19
    :pswitch_11
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_jiajiandang:I

    goto :goto_1

    .line 20
    :pswitch_12
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_huiche:I

    goto :goto_1

    .line 21
    :pswitch_13
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_tongguohuandao:I

    goto :goto_1

    .line 22
    :pswitch_14
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_tongguogongqiao:I

    goto :goto_1

    .line 23
    :pswitch_15
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_gongjiaozhan:I

    goto :goto_1

    .line 24
    :pswitch_16
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_diaotou:I

    goto :goto_1

    .line 25
    :pswitch_17
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_chaoche:I

    goto :goto_1

    .line 26
    :pswitch_18
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_biandao:I

    goto :goto_1

    .line 27
    :pswitch_19
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_banmaxian:I

    goto :goto_1

    .line 28
    :pswitch_1a
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->step_icon_kaishi:I

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58\u624b\u63a7\u6307\u4ee4 key exam_site_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ; value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "exam_site_"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
