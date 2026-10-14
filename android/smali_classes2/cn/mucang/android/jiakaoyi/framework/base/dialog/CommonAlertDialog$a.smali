.class public final Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0008J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "btnClickListener",
        "Landroid/view/View$OnClickListener;",
        "btnText",
        "",
        "closeListener",
        "desc",
        "title",
        "build",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;",
        "setBtnClickListener",
        "setBtnText",
        "setCloseListener",
        "setDesc",
        "setTitle",
        "framework_release"
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

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->a:Landroid/content/Context;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->a:Landroid/content/Context;

    .line 3
    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->e:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->f:Landroid/view/View$OnClickListener;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {v0, v1, v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    return-object v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;
    .locals 1

    const-string v0, "btnClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->e:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;
    .locals 1

    const-string v0, "btnText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->b:Ljava/lang/String;

    return-object p0
.end method
