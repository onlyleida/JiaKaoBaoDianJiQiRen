.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.AutoLogoutDialog$onCreate$3"
    f = "AutoLogoutDialog.kt"
    l = {
        0x51
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-direct {v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->L$1:Ljava/lang/Object;

    check-cast v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/i0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    .line 4
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xff7501

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_32:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    move-object v4, p1

    move-object p1, p0

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    .line 6
    :goto_0
    invoke-static {v4}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 8
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    const-string v7, "java.lang.String.format(format, *args)"

    const/4 v8, 0x0

    if-lez v6, :cond_2

    .line 9
    sget-object v6, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_x_minutes:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "getString(R.string.teachbase_x_minutes)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v9, v2, [Ljava/lang/Object;

    iget-object v10, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    add-int/2addr v10, v2

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object v6, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_x_sconds:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "getString(R.string.teachbase_x_sconds)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v9, v2, [Ljava/lang/Object;

    iget-object v10, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :goto_1
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x11

    .line 13
    invoke-virtual {v5, v3, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 15
    invoke-virtual {v5, v1, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 16
    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_door_auto_login:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 17
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;->tvTimeHint:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)I

    move-result v5

    if-nez v5, :cond_3

    .line 19
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 20
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "\u7184\u5c4f\u5012\u8ba1\u65f6\u7ed3\u675f\uff0c\u81ea\u52a8\u9000\u51fa\u767b\u5f55"

    .line 22
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    const/4 p1, 0x2

    const-string v0, "AutoLogout"

    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x3e8

    .line 24
    iput-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->L$0:Ljava/lang/Object;

    iput-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->L$1:Ljava/lang/Object;

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->L$2:Ljava/lang/Object;

    iput v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->label:I

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    .line 25
    :cond_4
    :goto_2
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;I)V

    goto/16 :goto_0

    .line 26
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
