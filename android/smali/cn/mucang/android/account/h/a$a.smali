.class Lcn/mucang/android/account/h/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/h/a;->s(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/h/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/h/a$a;->a:Lcn/mucang/android/account/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p1, "\u5b9e\u540d\u8ba4\u8bc1-\u786e\u8ba4\u63d0\u4ea4\u4fe1\u606f"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/h/a$a;->a:Lcn/mucang/android/account/h/a;

    invoke-static {p1}, Lcn/mucang/android/account/h/a;->r(Lcn/mucang/android/account/h/a;)Lcn/mucang/android/account/h/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/h/a$a;->a:Lcn/mucang/android/account/h/a;

    invoke-static {p1}, Lcn/mucang/android/account/h/a;->r(Lcn/mucang/android/account/h/a;)Lcn/mucang/android/account/h/a$c;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/account/h/a$c;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/account/h/a$a;->a:Lcn/mucang/android/account/h/a;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->dismiss()V

    return-void
.end method
