.class public final Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u001a\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/dialog/ModifyRulesDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "mBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;",
        "saveCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "getSaveCallback",
        "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "setSaveCallback",
        "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "onViewCreated",
        "view",
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
.field public static final c:Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->c:Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->v(Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->u(Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;Landroid/view/View;)V

    return-void
.end method

.method private static final u(Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->r()Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    return-void
.end method

.method private static final v(Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->r()Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    move-result-object p1

    const-string p2, "inflate(layoutInflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "mBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "mBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    const-string v0, "rule_id_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "is_save"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, p2

    goto :goto_2

    :cond_2
    const-string v2, "Mode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "Rule"

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    const-class v3, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 6
    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 7
    :cond_3
    const-class v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 8
    :goto_3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u89c4\u5219"

    goto :goto_4

    :cond_4
    const-string v1, "\u6263\u5206\u7801"

    .line 9
    :goto_4
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    const-string v3, "mBinding"

    if-eqz v2, :cond_10

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->titleTv:Landroid/widget/TextView;

    const/16 v4, 0x6761

    const-string v5, "\u53d1\u73b0"

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6709\u4fee\u6539"

    goto :goto_5

    :cond_5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6709\u4fee\u6539,\u662f\u5426\u4fdd\u5b58\uff1f"

    :goto_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->saveTv:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const-string v2, "\u4fdd\u5b58"

    goto :goto_6

    :cond_6
    const-string v2, "\u4fdd\u5b58\u5e76\u8fd4\u56de"

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->saveTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/rule/dialog/b;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/b;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->cancelTv:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    const-string v0, "\u53d6\u6d88"

    goto :goto_7

    :cond_7
    const-string v0, "\u8fd4\u56de"

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->cancelTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/a;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m$b;-><init>()V

    .line 17
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->ruleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "changeList"

    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_8

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentModifyRulesBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    :goto_8
    return-void

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public final r()Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object v0
.end method

.method public final w(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/m;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method
