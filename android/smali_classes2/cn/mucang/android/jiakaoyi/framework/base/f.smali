.class public abstract Lcn/mucang/android/jiakaoyi/framework/base/f;
.super Lcom/drakeet/multitype/b;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/base/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VB::",
        "Landroidx/viewbinding/a;",
        ">",
        "Lcom/drakeet/multitype/b<",
        "TT;",
        "Lcn/mucang/android/jiakaoyi/framework/base/h<",
        "TVB;>;>;",
        "Lcn/mucang/android/jiakaoyi/framework/base/j<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00050\u00042\u0008\u0012\u0004\u0012\u0002H\u00020\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\"\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\u0017\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "T",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/drakeet/multitype/ItemViewBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/WithViewBinding;",
        "()V",
        "onCreateViewHolder",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "parent",
        "Landroid/view/ViewGroup;",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drakeet/multitype/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic k(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/f;->m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcn/mucang/android/jiakaoyi/framework/base/h;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TVB;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/base/j$a;->a(Lcn/mucang/android/jiakaoyi/framework/base/j;Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/a;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcn/mucang/android/jiakaoyi/framework/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "TVB;>;"
        }
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/noober/background/BackgroundLibrary;->inject(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/f;->l(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/a;

    move-result-object p1

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;-><init>(Landroidx/viewbinding/a;)V

    return-object p2
.end method
