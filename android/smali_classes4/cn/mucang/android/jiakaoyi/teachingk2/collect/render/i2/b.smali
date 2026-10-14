.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a()V

    :goto_0
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
