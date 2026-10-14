.class public final Lcn/mucang/jiakaoyi/uilib/ui/login/f;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/login/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0008\u0010\u0017\u001a\u00020\u000cH\u0016J\u0008\u0010\u0018\u001a\u00020\u000cH\u0016J\u001a\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0018\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00050\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/login/CoachLoginFragment;",
        "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;",
        "()V",
        "loginCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "loginSuccess",
        "kotlin.jvm.PlatformType",
        "webView",
        "Lcn/mucang/android/core/webview/core/MucangWebView;",
        "getWebUrl",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onPause",
        "onResume",
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
.field public static final d:Lcn/mucang/jiakaoyi/uilib/ui/login/f$a;


# instance fields
.field private a:Lcn/mucang/android/core/webview/core/MucangWebView;

.field private b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/login/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/login/f$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->d:Lcn/mucang/jiakaoyi/uilib/ui/login/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/login/a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/login/a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/login/f;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/jiakaoyi/uilib/ui/login/f;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private final s()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://share-m.ttt.kakamobi.com/activity.kakamobi.com/jiakaobaodian-sakaar/qrcode.html"

    goto :goto_0

    :cond_0
    const-string v0, "https://share-m.kakamobi.com/activity.kakamobi.com/jiakaobaodian-sakaar/qrcode.html"

    :goto_0
    return-object v0
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/ui/login/f;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->v(Lcn/mucang/jiakaoyi/uilib/ui/login/f;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/ui/login/f;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->w(Lcn/mucang/jiakaoyi/uilib/ui/login/f;Landroid/view/View;)V

    return-void
.end method

.method private static final v(Lcn/mucang/jiakaoyi/uilib/ui/login/f;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final w(Lcn/mucang/jiakaoyi/uilib/ui/login/f;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/login/g;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->dialog_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u0;->c(Landroid/webkit/WebView;)V

    .line 3
    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/login/g;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void

    :cond_0
    const-string v0, "webView"

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->onPause()V

    return-void

    :cond_0
    const-string v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide v4, 0x3fe6147ae147ae14L    # 0.69

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-string v3, "dialog!!.window!!.attributes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->onResume()V

    return-void

    :cond_0
    const-string v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->close_dialog:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/login/b;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/login/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/login/f;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->dialog_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->wxTip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->phone_login:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "\u6559\u7ec3\u767b\u5f55"

    .line 6
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "\u4f7f\u7528\u5fae\u4fe1\u626b\u7801\u767b\u5f55"

    .line 7
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    .line 8
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->web_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById<MucangWebView>(R.id.web_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/core/webview/core/MucangWebView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-eqz p1, :cond_0

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "?deviceNum="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type=2&kemu="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$integer;->core_kemu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&isLogout=false"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "webView"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
