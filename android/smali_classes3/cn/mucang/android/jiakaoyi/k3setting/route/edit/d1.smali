.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0018H\u0002J$\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00132\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001fH\u0002J0\u0010 \u001a\u00020\u001c2\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160$0\"2\u0006\u0010%\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u0018J\u0008\u0010&\u001a\u00020\u001cH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachEditLogic;",
        "",
        "editViewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;",
        "(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;)V",
        "getEditViewModel",
        "()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
        "popupWindow",
        "Landroid/widget/PopupWindow;",
        "teachPlanMap",
        "Ljava/util/HashMap;",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;",
        "Lkotlin/collections/HashMap;",
        "getViewBinding",
        "()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;",
        "createStepNodes",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
        "entity",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
        "spotNode",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
        "getTeachPlanKey",
        "editNode",
        "initPopupWindow",
        "",
        "data",
        "selectCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "initTeachStepLayout",
        "teachMap",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "",
        "step",
        "showPopupWindow",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

.field private final b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

.field private c:Landroid/widget/PopupWindow;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;)V
    .locals 1

    const-string v0, "editViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d:Ljava/util/HashMap;

    return-void
.end method

.method private final a(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 3
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getTeachGpsList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getTeachId()Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    :cond_2
    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    :goto_1
    if-nez v3, :cond_3

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;-><init>()V

    .line 4
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    invoke-virtual {v3, v2}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setTeachId(Ljava/lang/Long;)V

    .line 5
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->setUid(Ljava/lang/String;)V

    .line 7
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private final c(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getStepId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getTeachNum()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final e(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    :goto_1
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    .line 4
    :cond_3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    sget v4, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->popup_dialog_layout:I

    invoke-virtual {v0, v4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->shape_e0e0e0_divider:I

    invoke-static {v3, v4}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;

    .line 10
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/mucang/android/jiakaoyi/k3setting/R$dimen;->dp_10:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 12
    invoke-direct {v4, v2, v3, v5, v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;-><init>(ILandroid/graphics/drawable/Drawable;II)V

    .line 13
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 14
    new-instance v3, Lcom/drakeet/multitype/f;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 15
    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e1;

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/q0;

    invoke-direct {v5, p2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/q0;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e1;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 16
    const-class p2, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-virtual {v3, p2, v4}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 17
    invoke-virtual {v3, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 18
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 19
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    new-instance p1, Landroid/widget/PopupWindow;

    .line 21
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->teachStepLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    const/4 v1, -0x2

    .line 22
    invoke-direct {p1, v0, p2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    .line 23
    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 25
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const-string v0, "#55000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/r0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/r0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :goto_4
    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V
    .locals 1

    const-string v0, "$selectCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->imgMore:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)Landroid/location/Location;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->j()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Ljava/util/List;Lcom/drakeet/multitype/f;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$editNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$teachPlanList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$teachAdapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->tvTeachStepName:Landroid/widget/TextView;

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->getStepName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->getTeachNum()I

    move-result p4

    invoke-virtual {p1, p4}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setTeachNum(I)V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->getTeachNum()I

    move-result v1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getTeachNum()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    check-cast p4, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->copy()Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->getGpsList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_3
    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setTeachGpsList(Ljava/util/List;)V

    .line 7
    invoke-virtual {p3, p2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->recyclerViewTeach:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->u()V

    return-void
.end method

.method private static final l(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->recyclerViewTeach:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->recyclerViewTeach:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->imgPoints:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Ljava/util/List;Lcom/drakeet/multitype/f;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->j(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Ljava/util/List;Lcom/drakeet/multitype/f;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->m(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->k(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)Landroid/location/Location;
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->i(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->l(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->f(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->g(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V

    return-void
.end method

.method private final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_3

    .line 3
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->teachStepLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->teachStepLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    const/4 v2, -0x2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    .line 7
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->imgMore:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final b()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    return-object v0
.end method

.method public final d()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    return-object v0
.end method

.method public final h(Ljava/util/Map;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;>;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            ")V"
        }
    .end annotation

    const-string v0, "teachMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editNode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_10

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    .line 7
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;-><init>()V

    .line 8
    iget v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->teachNum:I

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->setTeachNum(I)V

    .line 9
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->setStepName(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, v3, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->a(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->setGpsList(Ljava/util/List;)V

    .line 11
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p1}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d:Ljava/util/HashMap;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 14
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d:Ljava/util/HashMap;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    goto :goto_4

    .line 15
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->getTeachNum()I

    move-result v6

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getTeachNum()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    check-cast v5, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    if-nez v5, :cond_6

    move-object v2, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->copy()Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_7

    .line 16
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->d:Ljava/util/HashMap;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->c(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    if-nez v2, :cond_8

    return-void

    .line 17
    :cond_8
    new-instance v11, Lcom/drakeet/multitype/f;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 18
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->tvTeachStepName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->getStepName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, ""

    :cond_9
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->imgMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;

    invoke-direct {v0, p0, p3, p1, v11}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Ljava/util/List;Lcom/drakeet/multitype/f;)V

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->e(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->teachStepLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/n0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/n0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 23
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->teachStepLayout:Landroid/widget/LinearLayout;

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/p0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/p0;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->imgMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    :goto_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->imgPoints:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->recyclerViewTeach:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 27
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->imgPoints:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 28
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->imgPoints:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/m0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/m0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->recyclerViewTeach:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 30
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->recyclerViewTeach:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;

    .line 32
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    sget v5, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->shape_e0e0e0_divider:I

    .line 33
    invoke-static {v2, v5}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 34
    invoke-direct {v0, v3, v2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/b;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 36
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->recyclerViewTeach:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/o0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/o0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;)V

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/c;)V

    .line 38
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {v11, v2, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->getTeachNum()I

    move-result v2

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getTeachNum()I

    move-result v5

    if-ne v2, v5, :cond_c

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_b

    goto :goto_7

    :cond_d
    move-object v0, v4

    :goto_7
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;->getGpsList()Ljava/util/List;

    move-result-object v4

    :goto_8
    if-nez v4, :cond_f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    invoke-virtual {v11, v4}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 40
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 41
    invoke-virtual {p2, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_9

    .line 42
    :cond_10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_9
    return-void
.end method
