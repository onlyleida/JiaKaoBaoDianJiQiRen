.class Lcn/mucang/android/ui/framework/mvp/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/ui/framework/mvp/a;-><init>(Lcn/mucang/android/ui/framework/mvp/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/ui/framework/mvp/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/ui/framework/mvp/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a$a;->a:Lcn/mucang/android/ui/framework/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a$a;->a:Lcn/mucang/android/ui/framework/mvp/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/framework/mvp/a;->d(Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a$a;->a:Lcn/mucang/android/ui/framework/mvp/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/framework/mvp/a;->e(Landroid/view/View;)V

    return-void
.end method
