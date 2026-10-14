.class public final Lcn/mucang/android/account/activity/ValidationActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/activity/ValidationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/ValidationActivity$IntentBuilder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "checkSmsResponse",
        "Lcn/mucang/android/account/api/data/CheckSmsResponse;",
        "description",
        "",
        "from",
        "",
        "mobile",
        "title",
        "build",
        "Landroid/content/Intent;",
        "setCheckSmsResponse",
        "setDescription",
        "setFrom",
        "setMobile",
        "setTitle",
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
.field private final a:Landroid/content/Context;

.field private b:Lcn/mucang/android/account/api/data/CheckSmsResponse;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->a:Landroid/content/Context;

    const-class v2, Lcn/mucang/android/account/activity/ValidationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->b:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    if-eqz v1, :cond_0

    const-string v2, "__check_sms_response"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    :cond_0
    iget v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->c:I

    const-string v2, "__from__"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->d:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->d:Ljava/lang/String;

    const-string v2, "__title__"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->e:Ljava/lang/String;

    const-string v2, "__mobile__"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->f:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->f:Ljava/lang/String;

    const-string v2, "__description__"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    return-object v0
.end method

.method public final b(Lcn/mucang/android/account/api/data/CheckSmsResponse;)Lcn/mucang/android/account/activity/ValidationActivity$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->b:Lcn/mucang/android/account/api/data/CheckSmsResponse;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final d(I)Lcn/mucang/android/account/activity/ValidationActivity$a;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->c:I

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/ValidationActivity$a;->d:Ljava/lang/String;

    return-object p0
.end method
