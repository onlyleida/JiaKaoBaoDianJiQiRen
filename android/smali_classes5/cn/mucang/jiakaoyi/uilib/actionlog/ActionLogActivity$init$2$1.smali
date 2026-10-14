.class final Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.jiakaoyi.uilib.actionlog.ActionLogActivity$init$2$1"
    f = "ActionLogActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataAdapter:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$b;

.field final synthetic $loadingDialog:Lcn/mucang/android/account/ui/a;

.field final synthetic $modifyLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/d/c;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/ui/a;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$b;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/account/ui/a;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/framework/d/c;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;",
            "Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$b;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$loadingDialog:Lcn/mucang/android/account/ui/a;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$modifyLogs:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$dataAdapter:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$loadingDialog:Lcn/mucang/android/account/ui/a;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$modifyLogs:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$dataAdapter:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$b;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;-><init>(Lcn/mucang/android/account/ui/a;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$b;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$loadingDialog:Lcn/mucang/android/account/ui/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$modifyLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$modifyLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$dataAdapter:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$b;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$modifyLogs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->$dataAdapter:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    .line 10
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
