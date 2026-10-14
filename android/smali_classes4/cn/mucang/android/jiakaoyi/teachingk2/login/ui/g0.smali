.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0015\u001a\u00020\u000bH\u0016J\u0012\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0018\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0005H\u0002R(\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/ManagerPasswordDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "title",
        "",
        "tip",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V",
        "onCorrect",
        "Lkotlin/Function1;",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "",
        "getOnCorrect",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnCorrect",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getTip",
        "()Ljava/lang/String;",
        "getTitle",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;",
        "dismiss",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "verify",
        "it",
        "Landroid/view/View;",
        "loginInfo",
        "teachbase_release"
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

.field private final b:Ljava/lang/String;

.field private c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

.field private d:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->o(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->n(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->h(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->j(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->i(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->dismiss()V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_enter_admin_password:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_not_net:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "it"

    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->l(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "viewBinding"

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 3
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method private final l(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "it.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/u;

    invoke-direct {p1, p2, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/u;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    const-string v0, "$loginInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loading"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;->o(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    move-result-object p0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/w;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/w;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/v;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/v;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    :goto_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    instance-of p1, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_password_error:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_1
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/v;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/v;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/v;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/v;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw p0
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->a()Lkotlin/jvm/b/l;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    const-string v0, "$loading"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->d:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 5
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final k(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->d:Lkotlin/jvm/b/l;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x447f0000    # 1020.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x44f00000    # 1920.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, -0x2

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->titleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->tipTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->tipTv:Landroid/widget/TextView;

    const-string v3, "viewBinding.tipTv"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->b:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 13
    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->leftTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/x;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/x;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->rightTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/z;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/z;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;->passwordEt:Landroid/widget/EditText;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/y;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/y;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
