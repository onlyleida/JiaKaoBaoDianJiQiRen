.class public abstract Lcn/mucang/android/ui/framework/mvp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcn/mucang/android/ui/framework/mvp/b;",
        "M::",
        "Lcn/mucang/android/ui/framework/mvp/BaseModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Lcn/mucang/android/ui/framework/mvp/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/ui/framework/mvp/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/ui/framework/mvp/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    invoke-interface {p1}, Lcn/mucang/android/ui/framework/mvp/b;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/ui/framework/mvp/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/ui/framework/mvp/a$a;-><init>(Lcn/mucang/android/ui/framework/mvp/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Lcn/mucang/android/ui/framework/mvp/BaseModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected e(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
