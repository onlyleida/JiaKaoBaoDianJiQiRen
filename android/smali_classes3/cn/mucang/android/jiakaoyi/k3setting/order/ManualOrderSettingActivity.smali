.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0015J\u0008\u0010\u0016\u001a\u00020\u0012H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;",
        "getStatName",
        "",
        "initSort",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
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
.field private final a:Lkotlin/f;

.field private b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

.field private c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;

.field private final d:Lcom/drakeet/multitype/f;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity$examSite$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity$examSite$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->a:Lkotlin/f;

    .line 3
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->d:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;)Lcom/drakeet/multitype/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->d:Lcom/drakeet/multitype/f;

    return-object p0
.end method

.method private final h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private final i()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/g;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity$a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/g$f;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/g;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->o(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->p(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->q(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Ljava/util/List;)V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V
    .locals 11

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 2
    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 3
    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/b1;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;)V

    const-string v1, "\u786e\u8ba4\u91cd\u7f6e\u5417\uff1f"

    const-string v2, "\u91cd\u7f6e\u540e\u672c\u673a\u81ea\u5df1\u8bbe\u7f6e\u7684\u89c4\u5219\u5c06\u4f1a\u4e22\u5931"

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u786e\u5b9a"

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, v10

    .line 4
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 5
    invoke-direct {p1, p0, v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\u70b9\u51fb\u624b\u63a7\u6307\u4ee4\u91cd\u7f6e"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->c(J)V

    :goto_0
    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->d:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6307\u4ee4\u8bbe\u7f6e"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p1, "\u6ca1\u6709\u8003\u573a\u6570\u636e"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/c1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/c1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v2, "\u91cd\u7f6e"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/a1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/a1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u624b\u63a7\u6307\u4ee4\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v3, 0xff09

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->d:Lcom/drakeet/multitype/f;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/r;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/r;-><init>()V

    .line 14
    const-class v3, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    invoke-virtual {p1, v3, v2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ManualOrderSettingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->i()V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->a()Landroidx/lifecycle/z;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/d1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/d1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 18
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->b(J)V

    :goto_2
    return-void

    .line 19
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/ManualOrderSettingActivity;->h()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->d(J)V

    .line 2
    :goto_0
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    return-void
.end method
