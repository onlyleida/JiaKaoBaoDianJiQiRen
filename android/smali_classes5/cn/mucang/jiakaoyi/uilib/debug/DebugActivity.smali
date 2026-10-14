.class public final Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0005\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0015H\u0014J\u0008\u0010\u0017\u001a\u00020\u0015H\u0002R\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;",
        "()V",
        "itemBinder",
        "cn/mucang/jiakaoyi/uilib/debug/DebugActivity$itemBinder$1",
        "Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$itemBinder$1;",
        "logAdapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "selectLocation",
        "",
        "selectPosition",
        "viewModel",
        "Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;",
        "getViewModel",
        "()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "getStatName",
        "",
        "init",
        "",
        "onDestroy",
        "subscribeUi",
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
.field public static final g:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$a;


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lcom/drakeet/multitype/f;

.field private d:I

.field private e:I

.field private final f:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->g:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$viewModel$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$viewModel$2;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->e:I

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->f:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->p(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method private final B()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->k()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/b;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->h()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/g;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/g;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private static final C(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Ljava/util/HashSet;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->llArrows:Landroid/widget/LinearLayout;

    const-string v0, "viewBinding.llArrows"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final D(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Ljava/util/ArrayList;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->lock:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->logInfo:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)Lcom/drakeet/multitype/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->e:I

    return p0
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    return-object v0
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->p(Z)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->logInfo:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->rbFilter:I

    if-ne p2, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->o(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->llArrows:Landroid/widget/LinearLayout;

    const-string p1, "viewBinding.llArrows"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->o(I)V

    :goto_0
    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->g()V

    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->d:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->d:I

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->h()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/collections/s;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->d:I

    invoke-static {p1, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 5
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->e:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->logInfo:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->d:I

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->h()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 2
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->d:I

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->h()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/collections/s;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->d:I

    invoke-static {p1, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 5
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->e:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->logInfo:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_1
    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->r(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->D(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->o(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->s(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->q(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->n(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Ljava/util/HashSet;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->C(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;Ljava/util/HashSet;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "DebugActivity"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/f;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/f;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u5f00\u53d1\u8c03\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->etSearch:Landroid/widget/EditText;

    const-string v1, "viewBinding.etSearch"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->logInfo:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->lock:Landroid/widget/CheckBox;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/c;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/c;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->rgSearchMode:Landroid/widget/RadioGroup;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/h;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/h;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->btnClear:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/e;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/e;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->btnUp:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/a;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->btnDown:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/d;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/d;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u7cfb\u7edf\u65e5\u5fd7"

    const-string v1, "JLog"

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 14
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->common_spinner_item:I

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$e;

    invoke-direct {v2, v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$e;-><init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;I)V

    .line 15
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->common_spinner_drop_down_item:I

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->spType:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->spType:Landroid/widget/Spinner;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$d;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$d;-><init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->spType:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 19
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->m()Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->n(I)V

    .line 20
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;->c(Z)V

    .line 21
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->f:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;

    .line 22
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->logInfo:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->B()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;->a:Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;->d()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/e;->a:Lcn/mucang/android/jiakaoyi/framework/log/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/log/e;->c(I)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/log/e;->c(I)V

    return-void
.end method
