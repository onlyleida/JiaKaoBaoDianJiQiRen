.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$init$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
        "Ljava/lang/String;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "realCar",
        "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
        "desc",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$init$2$1$1;->$it:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$init$2$1$1;->invoke(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;Ljava/lang/String;)V
    .locals 2

    const-string v0, "realCar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelCode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->isManager:Z

    .line 6
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->describe:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$init$2$1$1;->$it:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->N(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    return-void
.end method
