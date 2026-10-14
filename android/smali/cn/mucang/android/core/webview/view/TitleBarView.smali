.class public Lcn/mucang/android/core/webview/view/TitleBarView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/b;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/webview/R$id;->top_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->a:Landroid/widget/RelativeLayout;

    .line 2
    sget v0, Lcn/mucang/android/framework/webview/R$id;->btn_browser_back:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->b:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcn/mucang/android/framework/webview/R$id;->btn_browser_close:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->c:Landroid/widget/TextView;

    .line 4
    sget v0, Lcn/mucang/android/framework/webview/R$id;->btn_browser_option:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->g:Landroid/widget/ImageButton;

    .line 5
    sget v0, Lcn/mucang/android/framework/webview/R$id;->top_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->d:Landroid/widget/TextView;

    .line 6
    sget v0, Lcn/mucang/android/framework/webview/R$id;->url_editor:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->e:Landroid/widget/RelativeLayout;

    .line 7
    sget v0, Lcn/mucang/android/framework/webview/R$id;->url_content:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->i:Landroid/widget/EditText;

    .line 8
    sget v0, Lcn/mucang/android/framework/webview/R$id;->cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->h:Landroid/widget/Button;

    .line 9
    sget v0, Lcn/mucang/android/framework/webview/R$id;->del_content:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->f:Landroid/widget/ImageView;

    .line 10
    sget v0, Lcn/mucang/android/framework/webview/R$id;->webview_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->j:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public getBtnBrowserBack()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBtnBrowserClose()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBtnBrowserOption()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getBtnCancel()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->h:Landroid/widget/Button;

    return-object v0
.end method

.method public getDelContent()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getTitleBar()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUrlContentEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method public getUrlEditorView()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/view/TitleBarView;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/webview/view/TitleBarView;->a()V

    return-void
.end method
