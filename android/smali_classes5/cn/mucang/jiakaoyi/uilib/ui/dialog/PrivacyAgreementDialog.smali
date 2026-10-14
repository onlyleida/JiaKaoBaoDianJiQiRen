.class public final Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001!B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u000fH\u0002J\u0008\u0010\u001a\u001a\u00020\tH\u0002J\u0008\u0010\u001b\u001a\u00020\tH\u0002J\u0008\u0010\u001c\u001a\u00020\tH\u0002J\u0012\u0010\u001d\u001a\u00020\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0015J\u0006\u0010 \u001a\u00020\tR\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0010j\u0008\u0012\u0004\u0012\u00020\u0006`\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0010j\u0008\u0012\u0004\u0012\u00020\u0015`\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "privacyViews",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;",
        "agree",
        "Lkotlin/Function0;",
        "",
        "closeListener",
        "(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "confirming",
        "",
        "currentPrivacyViewIndex",
        "",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;",
        "views",
        "Landroid/view/View;",
        "widthDp",
        "",
        "changeViewIndex",
        "index",
        "clickAgree",
        "exitApp",
        "judgeFinish",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "refusePrivacy",
        "IPrivacyView",
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
.field private final a:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final f:F

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->a:Lkotlin/jvm/b/a;

    .line 4
    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->b:Lkotlin/jvm/b/a;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->e:Ljava/util/ArrayList;

    const/high16 p1, 0x43fa0000    # 500.0f

    .line 7
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->f:F

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->h:I

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->g:Z

    return p0
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->j()V

    return-void
.end method

.method public static final synthetic c(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->g:Z

    return-void
.end method

.method private final d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->e:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->h:I

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->agree:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->exit:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->e:Ljava/util/ArrayList;

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->h:I

    invoke-static {p1, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 10
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d:Ljava/util/ArrayList;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->h:I

    invoke-static {v0, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->isSync()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->j()V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->g:Z

    if-eqz v1, :cond_2

    const-string v0, "\u6b63\u5728\u6267\u884c..."

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->g:Z

    .line 8
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/u;

    invoke-direct {v1, v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/u;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final f(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/s;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/s;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u8bbe\u7f6e\u72b6\u6001\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/t;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/t;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    :goto_1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "\u540c\u610f\u5931\u8d25"

    :cond_1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/t;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/t;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/t;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/t;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw p0
.end method

.method private static final g(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->j()V

    return-void
.end method

.method private static final h(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->g:Z

    return-void
.end method

.method private final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->m()V

    .line 3
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final j()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->h:I

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->a:Lkotlin/jvm/b/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->h:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d(I)V

    :goto_0
    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->p(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->g(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->h(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->f(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->q(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d:Ljava/util/ArrayList;

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->h:I

    invoke-static {p1, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->b:Lkotlin/jvm/b/a;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->i()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$onCreate$2$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p0, v4}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$onCreate$2$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->e()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n",
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d:Ljava/util/ArrayList;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;

    .line 5
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->container:Landroid/widget/FrameLayout;

    const-string v4, "viewBinding.container"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const-string v5, "layoutInflater"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;->g(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->d(I)V

    .line 10
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 14
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->f:F

    invoke-static {v0}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v0

    int-to-float v3, v0

    .line 15
    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->f:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/o0;->q(Landroid/view/WindowManager;)I

    move-result v0

    int-to-double v3, v0

    const-wide v5, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double v3, v3, v5

    double-to-int v0, v3

    .line 17
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, -0x2

    invoke-virtual {v3, v0, v4}, Landroid/view/Window;->setLayout(II)V

    .line 18
    :goto_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->exit:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/r;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/r;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->line:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->closeIv:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_7
    :goto_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;->agree:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/v;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/v;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final r()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;->i()V

    return-void
.end method
