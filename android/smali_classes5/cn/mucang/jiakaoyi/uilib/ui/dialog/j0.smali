.class public final Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0008\u0010\u0013\u001a\u00020\u0003H\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016J\u0008\u0010\u0015\u001a\u00020\u000bH\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/DefaultPrivacyView;",
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;",
        "localKey",
        "",
        "deviceType",
        "",
        "privacyAgreementId",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;",
        "confirmRead",
        "",
        "createView",
        "Landroid/view/View;",
        "parent",
        "Landroid/view/ViewGroup;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "getCancelText",
        "getConfirmText",
        "isConfirmRead",
        "isRequired",
        "isSync",
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
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "localKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyAgreementId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->b:I

    .line 4
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->c:Ljava/lang/String;

    return-void
.end method

.method private static final h(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/m;->a:Lcn/mucang/jiakaoyi/uilib/s/m$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/s/m$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->t(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final i(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/m;->a:Lcn/mucang/jiakaoyi/uilib/s/m$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/s/m$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->t(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->i(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a$a;->a(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "\u540c\u610f\u5e76\u4f7f\u7528"

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->isSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    return v1

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/k;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/k;-><init>()V

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->b:I

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/k;->m(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "\u653e\u5f03\u5e76\u9000\u51fa"

    return-object v0
.end method

.method public e()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->isSync()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/k;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/k;-><init>()V

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->b:I

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/i/k;->o(ILjava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;->confirm:Z

    :goto_1
    return v1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, p1, v0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->d:Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;

    const/4 p2, 0x0

    const-string v0, "viewBinding"

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;->appName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u611f\u8c22\u60a8\u4f7f\u7528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/framework/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->d:Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;->privacy:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/d;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->d:Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;->agreement:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/e;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/e;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->d:Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public isSync()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j0;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
