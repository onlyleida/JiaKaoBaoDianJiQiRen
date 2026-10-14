.class public final Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\"\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0012\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "()V",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "getStatName",
        "",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "account_release"
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
.field private final d:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/l1;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;

    new-instance v2, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->d:Lkotlin/f;

    return-void
.end method

.method private static final l(Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final m(Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x65

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/m1;->h(Landroid/app/Activity;I)V

    return-void
.end method

.method private static final n(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final o()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;

    return-object v0
.end method

.method public static synthetic p(Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->m(Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->l(Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->n(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u66f4\u6362\u624b\u673a-\u9009\u62e9\u66f4\u6362\u65b9\u5f0f"

    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->o()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    const-string v1, "\u66f4\u6362\u624b\u673a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->o()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/w;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/w;-><init>(Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->o()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;->changeMobile:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/account/activity/v;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/v;-><init>(Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->o()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;->toAuthRealName:Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/mucang/android/account/activity/x;->a:Lcn/mucang/android/account/activity/x;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const-string v1, "__change_phone_session_id__"

    const/16 v2, 0x67

    const/4 v3, -0x1

    const/16 v4, 0x65

    if-ne p1, v4, :cond_1

    if-ne p2, v3, :cond_1

    if-nez p3, :cond_0

    move-object v4, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x1

    .line 3
    invoke-static {p0, v2, v4, v5}, Lcn/mucang/android/account/activity/m1;->f(Landroid/app/Activity;ILjava/lang/String;I)V

    :cond_1
    const/16 v4, 0x66

    if-ne p1, v4, :cond_3

    if-ne p2, v3, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 p3, 0x0

    .line 5
    invoke-static {p0, v2, v0, p3}, Lcn/mucang/android/account/activity/m1;->f(Landroid/app/Activity;ILjava/lang/String;I)V

    :cond_3
    if-ne p1, v2, :cond_4

    if-ne p2, v3, :cond_4

    const-string p1, "\u624b\u673a\u53f7\u66f4\u6362\u6210\u529f!"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->o()Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivityChangePhoneTransferBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/ChangePhoneTransferActivity;->k()V

    return-void
.end method
