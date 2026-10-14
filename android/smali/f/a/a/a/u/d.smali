.class public final Lf/a/a/a/u/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a/u/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/a;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/f<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0012B\u001b\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00028\u00008VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/core/viewbinding/ViewBindingLazy;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lkotlin/Lazy;",
        "viewBingClass",
        "Ljava/lang/Class;",
        "layoutInflaterProvider",
        "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;",
        "(Ljava/lang/Class;Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;)V",
        "cached",
        "Landroidx/viewbinding/ViewBinding;",
        "value",
        "getValue$annotations",
        "()V",
        "getValue",
        "()Landroidx/viewbinding/ViewBinding;",
        "isInitialized",
        "",
        "LayoutInflaterProvider",
        "core-lib_release"
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
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TVB;>;"
        }
    .end annotation
.end field

.field private final b:Lf/a/a/a/u/d$a;

.field private c:Landroidx/viewbinding/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TVB;>;",
            "Lf/a/a/a/u/d$a;",
            ")V"
        }
    .end annotation

    const-string v0, "viewBingClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflaterProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/a/u/d;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lf/a/a/a/u/d;->b:Lf/a/a/a/u/d$a;

    return-void
.end method


# virtual methods
.method public a()Landroidx/viewbinding/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a/a/a/u/d;->c:Landroidx/viewbinding/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/a/u/d;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "inflate"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "viewBingClass.getDeclare\u2026youtInflater::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lf/a/a/a/u/d;->b:Lf/a/a/a/u/d$a;

    invoke-interface {v3}, Lf/a/a/a/u/d$a;->get()Landroid/view/LayoutInflater;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type VB of cn.mucang.android.core.viewbinding.ViewBindingLazy._get_value_$lambda-1"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/viewbinding/a;

    .line 4
    iput-object v0, p0, Lf/a/a/a/u/d;->c:Landroidx/viewbinding/a;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/u/d;->a()Landroidx/viewbinding/a;

    move-result-object v0

    return-object v0
.end method
