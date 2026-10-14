.class Lf/a/a/a/i/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/i/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/i/g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;

    invoke-direct {v0}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;-><init>()V

    const-string v1, "title"

    .line 3
    invoke-static {p2, v1}, Lf/a/a/a/i/g;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->q(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;

    const-string v1, "message"

    .line 4
    invoke-static {p2, v1}, Lf/a/a/a/i/g;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->n(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;

    const-string v1, "okButton"

    .line 5
    invoke-static {p2, v1}, Lf/a/a/a/i/g;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->p(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;

    const-string v1, "okAction"

    .line 6
    invoke-static {p2, v1}, Lf/a/a/a/i/g;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->o(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;

    const-string v1, "cancelButton"

    .line 7
    invoke-static {p2, v1}, Lf/a/a/a/i/g;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->k(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;

    const-string v1, "cancelAction"

    .line 8
    invoke-static {p2, v1}, Lf/a/a/a/i/g;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->j(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;

    const-string v1, "countDownAction"

    .line 9
    invoke-static {p2, v1}, Lf/a/a/a/i/g;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->m(Ljava/lang/String;)Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;

    :try_start_0
    const-string v1, "countDown"

    .line 10
    invoke-static {p2, v1}, Lf/a/a/a/i/g;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->l(J)Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/ErrorDialogParams$b;->i()Lcn/mucang/android/core/api/verify/ErrorDialogParams;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->m(Landroid/content/Context;Lcn/mucang/android/core/api/verify/ErrorDialogParams;)V

    const/4 p1, 0x1

    return p1
.end method
