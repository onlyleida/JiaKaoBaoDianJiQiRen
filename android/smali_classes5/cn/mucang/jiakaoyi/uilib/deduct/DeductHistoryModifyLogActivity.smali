.class public final Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$a;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;",
        "()V",
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
.field public static final b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;->b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;->j(Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6263\u5206\u4e2a\u4eba\u4fee\u6539"

    return-object v0
.end method

.method protected init()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$b;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u5386\u53f2\u4fee\u6539\u8bb0\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/deduct/b;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/b;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;->ruleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    new-instance v1, Lcn/mucang/android/account/ui/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/ui/a;-><init>(Landroid/content/Context;)V

    const-string v2, "\u52a0\u8f7d\u4e2d"

    .line 7
    invoke-virtual {v1, v2}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v3

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$init$2;

    const/4 v2, 0x0

    invoke-direct {v6, v1, p0, v0, v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$init$2;-><init>(Lcn/mucang/android/account/ui/a;Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity;Lcn/mucang/jiakaoyi/uilib/deduct/DeductHistoryModifyLogActivity$b;Lkotlin/coroutines/c;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
