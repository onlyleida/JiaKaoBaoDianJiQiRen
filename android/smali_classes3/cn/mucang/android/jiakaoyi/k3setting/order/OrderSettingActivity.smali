.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0015R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;",
        "getStatName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

.field private c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$examSite$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$examSite$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->a:Lkotlin/f;

    return-void
.end method

.method private final g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->m(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->o(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Landroid/view/View;)V
    .locals 11

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$lightViewModel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 2
    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 3
    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/t1;

    invoke-direct {v6, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/t1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;)V

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
    invoke-direct {p2, p0, v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 6
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "$lightViewModel"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->s(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 4
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 5
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_5
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 8
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bbe\u7f6e\u4e3b\u9875\u9762"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    const-string v1, "\u6ca1\u6709\u8003\u573a\u6570\u636e"

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroidx/lifecycle/m0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v2, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v1

    const-string v2, "ViewModelProvider(this).\u2026ghtViewModel::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    move-result-object v2

    const-string v3, "inflate(layoutInflater)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    const/4 v3, 0x0

    const-string v4, "viewBinding"

    if-eqz v2, :cond_8

    .line 7
    invoke-virtual {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 8
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3setting/order/r1;

    invoke-direct {v5, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/r1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v5, "\u6307\u4ee4\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v5, "\u5168\u90e8\u91cd\u7f6e"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/s1;

    invoke-direct {v6, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/s1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->divider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 14
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$e;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$e;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 15
    new-instance v18, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 16
    new-instance v12, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$b;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$b;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe0

    const/16 v17, 0x0

    const-string v9, "\u624b\u63a7\u6307\u4ee4"

    move-object/from16 v7, v18

    .line 17
    invoke-direct/range {v7 .. v17}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    aput-object v18, v6, v5

    const/4 v5, 0x1

    .line 18
    new-instance v18, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 19
    new-instance v12, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$c;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$c;-><init>()V

    const-string v9, "\u706f\u5149\u7ec4\u5408"

    move-object/from16 v7, v18

    .line 20
    invoke-direct/range {v7 .. v17}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    aput-object v18, v6, v5

    const/4 v5, 0x2

    .line 21
    new-instance v18, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 22
    new-instance v12, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$d;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity$d;-><init>()V

    const-string v9, "\u706f\u5149\u6307\u4ee4"

    move-object/from16 v7, v18

    .line 23
    invoke-direct/range {v7 .. v17}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    aput-object v18, v6, v5

    .line 24
    invoke-static {v6}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 25
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz v5, :cond_1

    iget-object v3, v5, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/u1;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/u1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    .line 27
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 28
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 31
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 34
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method
