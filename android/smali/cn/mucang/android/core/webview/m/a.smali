.class public Lcn/mucang/android/core/webview/m/a;
.super Lcn/mucang/android/ui/framework/mvp/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/m/a$b;,
        Lcn/mucang/android/core/webview/m/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/ui/framework/mvp/a<",
        "Lcn/mucang/android/core/webview/view/TitleBarView;",
        "Lcn/mucang/android/core/webview/model/TitleBarModel;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/core/webview/m/a$c;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/animation/AlphaAnimation;

.field private f:Lcn/mucang/android/core/webview/m/a$b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/view/TitleBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/mvp/a;-><init>(Lcn/mucang/android/ui/framework/mvp/b;)V

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/core/webview/m/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/core/webview/m/a;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/m/a;->s(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcn/mucang/android/core/webview/m/a;)Lcn/mucang/android/core/webview/m/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/m/a;->f:Lcn/mucang/android/core/webview/m/a$b;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/core/webview/m/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/m/a;->r()V

    return-void
.end method

.method static synthetic l(Lcn/mucang/android/core/webview/m/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/m/a;->q()V

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v1, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exception"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlEditorView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private s(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x42

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlEditorView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlContentEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v1, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlContentEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/ui/framework/mvp/BaseModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/core/webview/model/TitleBarModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/webview/m/a;->m(Lcn/mucang/android/core/webview/model/TitleBarModel;)V

    return-void
.end method

.method public m(Lcn/mucang/android/core/webview/model/TitleBarModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/webview/R$anim;->core__webview_progress_dismiss:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lcn/mucang/android/core/webview/m/a;->e:Landroid/view/animation/AlphaAnimation;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserOption()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserClose()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getDelContent()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnCancel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->isShowProgressBar()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/m/a;->c:Z

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->isHideRightButton()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserOption()Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->isShowBackButton()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserBack()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->isUrlEditable()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/m/a;->d:Z

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlContentEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/view/TitleBarView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlContentEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/core/webview/m/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/m/a$a;-><init>(Lcn/mucang/android/core/webview/m/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_4
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserClose()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public o(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserOption()Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserOption()Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getDelContent()Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlContentEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/core/webview/m/a;->w()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnCancel()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/core/webview/m/a;->r()V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/core/webview/m/a;->b:Lcn/mucang/android/core/webview/m/a$c;

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserBack()Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcn/mucang/android/core/webview/m/a;->b:Lcn/mucang/android/core/webview/m/a$c;

    invoke-interface {p1}, Lcn/mucang/android/core/webview/m/a$c;->a()V

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserClose()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 11
    iget-object p1, p0, Lcn/mucang/android/core/webview/m/a;->b:Lcn/mucang/android/core/webview/m/a$c;

    invoke-interface {p1}, Lcn/mucang/android/core/webview/m/a$c;->b()V

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserOption()Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 13
    iget-object p1, p0, Lcn/mucang/android/core/webview/m/a;->b:Lcn/mucang/android/core/webview/m/a$c;

    invoke-interface {p1}, Lcn/mucang/android/core/webview/m/a$c;->c()V

    :cond_5
    return-void
.end method

.method public p(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/core/webview/view/TitleBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/core/webview/view/TitleBarView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public t(Lcn/mucang/android/core/webview/m/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/m/a;->f:Lcn/mucang/android/core/webview/m/a$b;

    return-void
.end method

.method public u(Lcn/mucang/android/core/webview/m/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/m/a;->b:Lcn/mucang/android/core/webview/m/a$c;

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getBtnBrowserClose()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public x(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/m/a;->c:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/m/a;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public y(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/m/a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/webview/m/a;->y(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/view/TitleBarView;->getUrlContentEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
