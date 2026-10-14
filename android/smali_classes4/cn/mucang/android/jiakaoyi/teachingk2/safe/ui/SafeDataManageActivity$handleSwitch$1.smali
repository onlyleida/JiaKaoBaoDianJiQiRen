.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->y(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $open:Z

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;->$open:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;->invoke(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    if-eqz v3, :cond_2

    :goto_0
    instance-of p1, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    if-eqz p1, :cond_3

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 3
    :goto_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;->$open:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_safe_ok:I

    const-string v0, "\u5b89\u5168\u7cfb\u7edf\u542f\u7528\u6210\u529f"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->d(Ljava/lang/String;I)V

    if-nez v2, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setChecked(Z)V

    .line 6
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    :goto_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->f()V

    goto :goto_6

    .line 8
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->m()Lkotlinx/coroutines/t1;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 9
    :goto_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->o(Lkotlinx/coroutines/t1;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;

    .line 10
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;

    invoke-direct {v0, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;-><init>(IZ)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    if-nez v2, :cond_8

    goto :goto_5

    .line 11
    :cond_8
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeSwitchModel;->setChecked(Z)V

    .line 12
    :goto_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$handleSwitch$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_6
    return-void

    :cond_a
    const-string p1, "itemMap"

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
