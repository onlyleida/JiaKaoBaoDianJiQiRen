.class public final Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$Companion;",
        "",
        "()V",
        "createDialog",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "title",
        "",
        "btnText",
        "listener",
        "Landroid/view/View$OnClickListener;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;-><init>()V

    return-void
.end method

.method private static final b(Landroid/view/View$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$listener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$a;->b(Landroid/view/View$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btnText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 3
    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-string v3, ""

    move-object v1, v9

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 4
    invoke-direct {v0, p1, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 8
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/h;

    invoke-direct {p2, p4}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/h;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string p1, "{\n                AlertD\u2026  .create()\n            }"

    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
