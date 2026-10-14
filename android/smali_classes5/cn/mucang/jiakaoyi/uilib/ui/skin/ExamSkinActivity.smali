.class public final Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0004\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\tH\u0014J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "selectSkin",
        "Lcn/mucang/jiakaoyi/uilib/ui/skin/BaseSkin;",
        "changeSkin",
        "",
        "skin",
        "getStatName",
        "",
        "init",
        "loadSkinList",
        "",
        "save",
        "Companion",
        "SkinItemBinder",
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


# instance fields
.field private b:Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

.field private final c:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->c:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/jiakaoyi/uilib/ui/skin/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->n(Lcn/mucang/jiakaoyi/uilib/ui/skin/f;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)Lcom/drakeet/multitype/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->c:Lcom/drakeet/multitype/f;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)Lcn/mucang/jiakaoyi/uilib/ui/skin/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->s()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final n(Lcn/mucang/jiakaoyi/uilib/ui/skin/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->b()I

    move-result v2

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->b()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->e(Z)V

    goto :goto_0

    .line 5
    :cond_2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final o(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->t()V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->p(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->o(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Landroid/view/View;)V

    return-void
.end method

.method private final s()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/skin/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "keyExamSkinType"

    .line 3
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "keyK2ExamSkinType"

    .line 4
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    .line 5
    :goto_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v4, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinBaseProvider;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinBaseProvider;

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinBaseProvider;->getSkinList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    .line 8
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->b()I

    move-result v5

    if-ne v5, v1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 9
    :goto_2
    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->e(Z)V

    if-eqz v5, :cond_4

    .line 10
    iput-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    .line 11
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private final t()V
    .locals 9

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6b63\u5728\u4fdd\u5b58\u542f\u7528\u76ae\u80a4..."

    .line 3
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;

    invoke-direct {v6, p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->b()I

    move-result v0

    const-string v1, "keyK2ExamSkinType"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "selectSkin"

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8003\u8bd5\u76ae\u80a4\u5217\u8868"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8003\u8bd5\u76ae\u80a4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/16 v1, 0x24

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/skin/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/skin/a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;->skinListRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityExamSkinBinding;->skinListRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->c:Lcom/drakeet/multitype/f;

    .line 10
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$a;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V

    .line 11
    const-class v3, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    invoke-virtual {v1, v3, v2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->s()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 13
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$init$4;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$init$4;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->c(JLkotlin/jvm/b/a;)V

    :cond_0
    return-void
.end method
