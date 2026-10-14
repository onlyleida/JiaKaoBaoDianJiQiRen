.class public final Lcn/mucang/android/account/j/o/j$c;
.super Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/j/o/j;->F(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/account/one_key_login/activity/AliOneKeyLoginPage$setLoginViewConfig$1",
        "Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;",
        "onViewCreated",
        "",
        "v",
        "Landroid/view/View;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/j/o/j$c;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/j/o/j$c;->c(Landroid/view/View;)V

    return-void
.end method

.method private static final c(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/account/j/o/j;->c()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget p0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p0

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x403

    .line 5
    sget-object v2, Lcn/mucang/android/account/j/o/j;->a:Lcn/mucang/android/account/j/o/j;

    invoke-static {v2}, Lcn/mucang/android/account/j/o/j;->d(Lcn/mucang/android/account/j/o/j;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v2

    const-string v3, "xiaomi"

    .line 6
    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/account/AccountManager;->J(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;Ljava/lang/String;)Z

    return-void
.end method

.method private static final d(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/account/j/o/j;->c()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget p0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p0

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x403

    .line 5
    sget-object v2, Lcn/mucang/android/account/j/o/j;->a:Lcn/mucang/android/account/j/o/j;

    invoke-static {v2}, Lcn/mucang/android/account/j/o/j;->d(Lcn/mucang/android/account/j/o/j;)Lcn/mucang/android/account/data/LoginSmsModel;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcn/mucang/android/account/AccountManager;->K(Landroid/app/Activity;ILcn/mucang/android/account/data/LoginModel;)Z

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/framework/account/R$id;->account__login_third_layout_in:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "v.findViewById(R.id.acco\u2026t__login_third_layout_in)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v1, Lcn/mucang/android/framework/account/R$id;->account_login_third_xiaomi_iv:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.account_login_third_xiaomi_iv)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    sget v2, Lcn/mucang/android/framework/account/R$id;->account_login_third_weixin_iv:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "v.findViewById(R.id.account_login_third_weixin_iv)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    sget-object v2, Lcn/mucang/android/account/j/o/j;->a:Lcn/mucang/android/account/j/o/j;

    invoke-static {v2, v0, p1, v1}, Lcn/mucang/android/account/j/o/j;->a(Lcn/mucang/android/account/j/o/j;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5
    sget-object v0, Lcn/mucang/android/account/j/o/g;->a:Lcn/mucang/android/account/j/o/g;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget-object v0, Lcn/mucang/android/account/j/o/f;->a:Lcn/mucang/android/account/j/o/f;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
