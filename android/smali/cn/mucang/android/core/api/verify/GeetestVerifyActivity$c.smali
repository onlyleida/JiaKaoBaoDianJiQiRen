.class Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->k(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$c;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$c;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    const-string v0, "\u53d6\u6d88\u9a8c\u8bc1"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$c;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
