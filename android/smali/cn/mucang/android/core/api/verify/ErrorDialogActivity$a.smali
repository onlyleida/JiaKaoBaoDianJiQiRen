.class Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/verify/ErrorDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field final synthetic d:Lcn/mucang/android/core/api/verify/ErrorDialogActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/api/verify/ErrorDialogActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->d:Lcn/mucang/android/core/api/verify/ErrorDialogActivity;

    const-wide/16 v0, 0x3e8

    .line 2
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->a:Z

    .line 4
    iput-object p4, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->b:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->c:Ljava/lang/String;

    .line 6
    invoke-static {p4}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "%d"

    invoke-virtual {p4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->a:Z

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->d:Lcn/mucang/android/core/api/verify/ErrorDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->d:Lcn/mucang/android/core/api/verify/ErrorDialogActivity;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->g(Lcn/mucang/android/core/api/verify/ErrorDialogActivity;)Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/framework/core/databinding/CoreApiVerifyActivityErrorDialogBinding;->message:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/ErrorDialogActivity$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
