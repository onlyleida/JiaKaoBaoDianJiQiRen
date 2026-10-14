.class Lcn/mucang/android/ui/widget/xrecyclerview/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/ui/widget/xrecyclerview/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/ui/widget/xrecyclerview/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/ui/widget/xrecyclerview/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a$a;->a:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a$a;->a:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->a(Lcn/mucang/android/ui/widget/xrecyclerview/a;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a$a;->a:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->b(Lcn/mucang/android/ui/widget/xrecyclerview/a;)Lcn/mucang/android/ui/widget/xrecyclerview/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/a$a;->a:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->b(Lcn/mucang/android/ui/widget/xrecyclerview/a;)Lcn/mucang/android/ui/widget/xrecyclerview/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/a$b;->a()V

    :cond_0
    return-void
.end method
