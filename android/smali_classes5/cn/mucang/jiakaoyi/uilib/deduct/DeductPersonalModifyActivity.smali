.class public final Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0015R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;",
        "()V",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "getKeMu",
        "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "keMu$delegate",
        "Lkotlin/Lazy;",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
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
.field public static final c:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$a;


# instance fields
.field private final b:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->c:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$keMu$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$keMu$2;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->b:Lkotlin/f;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->k()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p0

    return-object p0
.end method

.method private final k()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object v0
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;->b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->l(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->m(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6263\u5206\u4e2a\u4eba\u4fee\u6539"

    return-object v0
.end method

.method protected init()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v2, "\u5386\u53f2\u4fee\u6539\u8bb0\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/deduct/h;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/h;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u5f53\u524d\u4e2a\u4eba\u4fee\u6539"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/deduct/i;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/i;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->ruleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 10
    invoke-static {v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v4

    new-instance v7, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;

    invoke-direct {v7, p0, v1, v0, v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
