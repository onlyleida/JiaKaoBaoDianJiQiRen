.class public final Lcn/mucang/android/account/activity/ValidationActivity;
.super Lcn/mucang/android/account/activity/l1;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/n/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/activity/ValidationActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 82\u00020\u00012\u00020\u0002:\u000289B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0018\u001a\u00020\u0019J\u0008\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0005J\u0008\u0010 \u001a\u0004\u0018\u00010\u000fJ\u0008\u0010!\u001a\u00020\u000fH\u0016J\u0008\u0010\"\u001a\u00020\u0019H\u0002J\u0008\u0010#\u001a\u00020\u0019H\u0002J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\tH\u0002J\"\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\t2\u0006\u0010(\u001a\u00020\t2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0012\u0010+\u001a\u00020\u00192\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0014J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\t2\u0006\u00101\u001a\u000202H\u0016J\u0008\u00103\u001a\u00020\u0019H\u0016J\u0010\u00104\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\tH\u0016J\u0010\u00105\u001a\u00020\u00192\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u00106\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\tH\u0002J\u0010\u00107\u001a\u00020\u00192\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006:"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/ValidationActivity;",
        "Lcn/mucang/android/account/activity/AccountBaseActivity;",
        "Lcn/mucang/android/account/utils/CountDownListener;",
        "()V",
        "checkSmsResponse",
        "Lcn/mucang/android/account/api/data/CheckSmsResponse;",
        "clickSendVoiceTime",
        "",
        "from",
        "",
        "handler",
        "Lcn/mucang/android/account/utils/CountDownTimeHandler;",
        "inputMethodManager",
        "Landroid/view/inputmethod/InputMethodManager;",
        "mobile",
        "",
        "validator",
        "Lcn/mucang/android/account/activity/handler/ValidateHandler;",
        "viewBinding",
        "Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "afterViews",
        "",
        "doButtonLeft",
        "doOk",
        "doResend",
        "view",
        "Landroid/view/View;",
        "getCheckSmsResponse",
        "getMobile",
        "getStatName",
        "handleSmsResponse",
        "initValidator",
        "initVoiceCode",
        "restSeconds",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onTimeOver",
        "onTimeUpdate",
        "setCheckSmsResponse",
        "setCountDownTime",
        "setVoiceCodeCheckSmsResponse",
        "Companion",
        "IntentBuilder",
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


# instance fields
.field private final d:Lkotlin/f;

.field private e:Landroid/view/inputmethod/InputMethodManager;

.field private f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcn/mucang/android/account/activity/o1/g;

.field private j:J

.field private final k:Lcn/mucang/android/account/n/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/l1;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    new-instance v2, Lcn/mucang/android/account/activity/ValidationActivity$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/ValidationActivity$b;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->d:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/android/account/n/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/n/d;-><init>(Lcn/mucang/android/account/n/c;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->k:Lcn/mucang/android/account/n/d;

    return-void
.end method

.method private final A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    return-object v0
.end method

.method private final B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getCheckType()Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v0

    :goto_0
    sget-object v2, Lcn/mucang/android/account/api/data/CheckType;->TRUE:Lcn/mucang/android/account/api/data/CheckType;

    if-ne v0, v2, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getSmsCode()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 3
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getDelay()J

    move-result-wide v0

    .line 4
    :goto_2
    new-instance v2, Lcn/mucang/android/account/activity/e1;

    invoke-direct {v2, p0}, Lcn/mucang/android/account/activity/e1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-static {v2, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 5
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->k:Lcn/mucang/android/account/n/d;

    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getRestSeconds()I

    move-result v1

    :goto_4
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/n/d;->d(I)V

    return-void
.end method

.method private static final C(Lcn/mucang/android/account/activity/ValidationActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getSmsCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3
    :goto_1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->codeInput:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->codeInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->codeInputFromForgetPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    iget-object p0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->codeInputFromForgetPassword:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private final D()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance v0, Lcn/mucang/android/account/activity/o1/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/o1/h;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    goto :goto_0

    .line 3
    :pswitch_1
    new-instance v0, Lcn/mucang/android/account/activity/o1/i;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/o1/i;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->changeMobile:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :pswitch_2
    new-instance v0, Lcn/mucang/android/account/activity/o1/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/o1/f;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    goto :goto_0

    .line 6
    :pswitch_3
    new-instance v0, Lcn/mucang/android/account/activity/o1/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/o1/e;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "__change_phone_session_id__"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "__change_phone_type__"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9
    new-instance v2, Lcn/mucang/android/account/activity/o1/d;

    invoke-direct {v2, p0, v0, v1}, Lcn/mucang/android/account/activity/o1/d;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;I)V

    iput-object v2, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    goto :goto_0

    .line 10
    :pswitch_5
    new-instance v0, Lcn/mucang/android/account/activity/o1/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/activity/o1/c;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final E(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    if-ge p1, v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    const-string v0, "\u6536\u4e0d\u5230\u9a8c\u8bc1\u7801\uff1f\u8bd5\u8bd5<font color=\'#1DACF9\'><u>\u8bed\u97f3\u9a8c\u8bc1\u7801</u></font>"

    .line 5
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "\u7ed1\u5b9a\u624b\u673a\u9875-\u51fa\u73b0\u8bed\u97f3\u9a8c\u8bc1"

    .line 8
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->p(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->o(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/activity/ValidationActivity;->u(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic I(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->v(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/account/activity/ValidationActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->C(Lcn/mucang/android/account/activity/ValidationActivity;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->r(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->s(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->q(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->m(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcn/mucang/android/account/activity/ValidationActivity;[Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->l(Lcn/mucang/android/account/activity/ValidationActivity;[Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic P(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->n(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V

    return-void
.end method

.method private final R(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnResendInput:Landroid/widget/Button;

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->btnResendInputFromForgetPassword:Landroid/widget/Button;

    :goto_0
    const-string v1, "if (from != FROM_FORGOT_\u2026mForgetPassword\n        }"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v1, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->E(I)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/account/activity/ValidationActivity;[Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->e:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_0
    const-string p0, "inputMethodManager"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final m(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->t()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->x(Landroid/view/View;)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->x(Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->w()V

    return-void
.end method

.method private static final q(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->w()V

    return-void
.end method

.method private static final r(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    const/16 v0, 0x525

    invoke-virtual {p1, p0, v0}, Lcn/mucang/android/account/AccountManager;->E(Landroid/app/Activity;I)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/view/View;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/account/activity/ValidationActivity;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/account/activity/o1/g;->e(Landroid/view/View;)V

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->j:J

    goto :goto_1

    :cond_1
    const-string p0, "\u60a8\u64cd\u4f5c\u592a\u9891\u7e41\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    const-string p0, "\u7ed1\u5b9a\u624b\u673a\u9875-\u70b9\u51fb\u8bed\u97f3\u9a8c\u8bc1"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final t()V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\u5efa\u8bae\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5
    sget-object v1, Lcn/mucang/android/account/activity/d1;->a:Lcn/mucang/android/account/activity/d1;

    const-string v2, "\u7ee7\u7eed\u7ed1\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    new-instance v1, Lcn/mucang/android/account/activity/c1;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/c1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    const-string v2, "\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private static final u(Lcn/mucang/android/account/activity/ValidationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\u7ed1\u5b9a\u624b\u673a\u9875-\u5f39\u7a97-\u91cd\u65b0\u767b\u5f55"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final v(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "\u7ed1\u5b9a\u624b\u673a\u9875-\u5f39\u7a97-\u7ee7\u7eed\u7ed1\u5b9a"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final w()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->codeInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->codeInputFromForgetPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getSmsId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    .line 5
    :cond_2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    iget v1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    iget-object v1, v1, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    invoke-virtual {v0}, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 10
    sget v1, Lcn/mucang/android/framework/account/R$anim;->core__account_protocol:I

    .line 11
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    sget v0, Lcn/mucang/android/framework/account/R$string;->account__disagree_protocol_tip:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getSmsId()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/account/activity/o1/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_7
    :goto_4
    const-string v0, "\u8bf7\u5148\u8bf7\u6c42\u9a8c\u8bc1\u7801"

    .line 15
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final x(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/account/activity/o1/g;->d(Landroid/view/View;)V

    .line 2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final Q(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->B()V

    return-void
.end method

.method public final S(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->R(I)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/account/activity/ValidationActivity;->R(I)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9a8c\u8bc1\u624b\u673a\u9875"

    return-object v0
.end method

.method public final k()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__title__"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "\u9a8c\u8bc1\u624b\u673a"

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v2, v2, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarCenter:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "__from__"

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const-string v1, "__check_sms_response"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-nez v1, :cond_1

    const-string v0, "\u975e\u6cd5\u7684\u8bf7\u6c42"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->D()V

    .line 10
    iget-object v3, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Lcn/mucang/android/account/activity/o1/g;->b(Landroid/content/Intent;)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const-string v3, "__description__"

    .line 12
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->finishedText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, v1}, Lcn/mucang/android/account/activity/ValidationActivity;->Q(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    const-string v1, "__mobile__"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->g:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/EditText;

    .line 16
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    .line 17
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->panelShowUsername:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->panelInputUsername:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->regUsernameShow:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/mucang/android/account/activity/ValidationActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->codeInput:Landroid/widget/EditText;

    aput-object v0, v1, v4

    goto :goto_1

    .line 21
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->panelShowUsername:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->panelInputUsername:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->codeInput:Landroid/widget/EditText;

    aput-object v0, v1, v4

    .line 24
    :goto_1
    iget v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const/4 v5, 0x6

    if-eq v0, v5, :cond_5

    .line 25
    new-instance v0, Lcn/mucang/android/account/activity/j1;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/account/activity/j1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;[Landroid/widget/EditText;)V

    const-wide/16 v5, 0x1f4

    invoke-static {v0, v5, v6}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 26
    :cond_5
    iget v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 27
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    invoke-virtual {v0}, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 28
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 29
    :cond_6
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    invoke-virtual {v0}, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 31
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->phoneNumberFromForgetPassword:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->g:Ljava/lang/String;

    const-string v5, "\u9a8c\u8bc1\u7801\u5df2\u7ecf\u4e0b\u53d1\u81f3 "

    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_2
    iget v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->h:I

    if-eq v0, v2, :cond_7

    .line 33
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->accountProtocolLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->bindTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 35
    :cond_7
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->accountProtocolLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->bindTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    :goto_3
    sget-object v5, Lcn/mucang/android/account/n/b;->a:Lcn/mucang/android/account/n/b;

    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->accountProtocolIn:Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;

    iget-object v6, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeProtocolBinding;->tvProtocol:Landroid/widget/TextView;

    const-string v0, "viewBinding.accountProtocolIn.tvProtocol"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcn/mucang/android/account/n/b;->c(Lcn/mucang/android/account/n/b;Landroid/widget/TextView;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->titleBarLeft:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/account/activity/i1;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/i1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnResendInput:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/k1;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/k1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->btnResendInputFromForgetPassword:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/b1;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/b1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->okBtn:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/a1;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/a1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->checkFromForgetPassword:Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationFromForgetPasswordBinding;->btnOkFromForgetPassword:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/account/activity/h1;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/h1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->changeMobile:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/f1;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/f1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->btnSendVoiceCode:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/account/activity/g1;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/g1;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->i:Lcn/mucang/android/account/activity/o1/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/account/activity/o1/g;->c(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/activity/l1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    const-string p1, "input_method"

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcn/mucang/android/account/activity/ValidationActivity;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->k()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->t()V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final y()Lcn/mucang/android/account/api/data/CheckSmsResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->f:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/account/activity/ValidationActivity;->A()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;->usernameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/ValidationActivity;->g:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
