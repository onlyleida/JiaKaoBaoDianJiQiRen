.class Lcn/mucang/android/account/k/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/k/c;->m(Lcn/mucang/android/account/data/LoginSmsModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/k/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/k/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/k/c$a;->a:Lcn/mucang/android/account/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/c$a;->a:Lcn/mucang/android/account/k/c;

    invoke-static {v0}, Lcn/mucang/android/account/k/c;->w(Lcn/mucang/android/account/k/c;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/account/k/c$a;->a:Lcn/mucang/android/account/k/c;

    invoke-static {v0}, Lcn/mucang/android/account/k/c;->x(Lcn/mucang/android/account/k/c;)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/ui/LoginSmsCommonView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/LoginSmsCommonView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/k/c$a;->a:Lcn/mucang/android/account/k/c;

    iget-object p1, p1, Lcn/mucang/android/account/k/b;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    sget p1, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/k/c$a;->a:Lcn/mucang/android/account/k/c;

    invoke-static {v0, p1}, Lcn/mucang/android/account/k/c;->y(Lcn/mucang/android/account/k/c;Landroid/view/View;)V

    const-string p1, "\u624b\u673a\u53f7\u77ed\u4fe1\u767b\u5f55\u9875-\u70b9\u51fb\u8bed\u97f3\u9a8c\u8bc1"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method
