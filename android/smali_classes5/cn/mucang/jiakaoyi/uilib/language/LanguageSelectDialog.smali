.class public final Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->b(Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final b(Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;Landroid/view/View;)V
    .locals 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->uighurRb:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Uighur:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/language/Language;->getType()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/language/a;->d(I)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->UYGUR:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->g(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/consts/Language;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->enRb:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->ENGLISH:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->g(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/consts/Language;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Chinese:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/language/Language;->getType()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/language/a;->d(I)V

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->CHINESE:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->g(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/consts/Language;)V

    .line 8
    :goto_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u8bbe\u7f6e\u6210\u529f\uff0c\u5373\u5c06\u9000\u51fa\uff0c\u8bf7\u91cd\u65b0\u542f\u52a8App"

    .line 10
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog$onCreate$1$1;

    invoke-direct {v5, v1}, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog$onCreate$1$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    return-void

    .line 12
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_c

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dialog_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 7
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 8
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->c()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_5

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u8bed\u8a00\u5207\u6362"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/language/a;->a()Lcn/mucang/android/jiakaoyi/framework/language/Language;

    move-result-object p1

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Uighur:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    if-ne p1, v3, :cond_2

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->uighurRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->chineseRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->b()Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    move-result-object p1

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->UYGUR:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    if-ne p1, v3, :cond_7

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->uighurRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->b()Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    move-result-object p1

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->ENGLISH:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    if-ne p1, v3, :cond_9

    .line 17
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->enRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->chineseRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 19
    :goto_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;->a:Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;->saveTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/language/a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/language/a;-><init>(Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
