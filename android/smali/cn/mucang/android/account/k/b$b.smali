.class Lcn/mucang/android/account/k/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/k/b;->m(Lcn/mucang/android/account/data/LoginSmsModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/k/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/k/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/k/b$b;->a:Lcn/mucang/android/account/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/k/b$b;->a:Lcn/mucang/android/account/k/b;

    invoke-static {p1}, Lcn/mucang/android/account/k/b;->h(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/k/b$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/account/k/b$b;->a:Lcn/mucang/android/account/k/b;

    invoke-static {p1}, Lcn/mucang/android/account/k/b;->h(Lcn/mucang/android/account/k/b;)Lcn/mucang/android/account/k/b$d;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/account/k/b$d;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/k/b$b;->a:Lcn/mucang/android/account/k/b;

    invoke-static {p1}, Lcn/mucang/android/account/k/b;->i(Lcn/mucang/android/account/k/b;)V

    :cond_1
    return-void
.end method
