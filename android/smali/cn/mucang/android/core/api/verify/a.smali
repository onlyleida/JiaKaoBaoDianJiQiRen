.class public final synthetic Lcn/mucang/android/core/api/verify/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/api/verify/ErrorDialogActivity;

.field public final synthetic b:Lcn/mucang/android/core/api/verify/ErrorDialogParams;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/api/verify/ErrorDialogActivity;Lcn/mucang/android/core/api/verify/ErrorDialogParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/api/verify/a;->a:Lcn/mucang/android/core/api/verify/ErrorDialogActivity;

    iput-object p2, p0, Lcn/mucang/android/core/api/verify/a;->b:Lcn/mucang/android/core/api/verify/ErrorDialogParams;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/api/verify/a;->a:Lcn/mucang/android/core/api/verify/ErrorDialogActivity;

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/a;->b:Lcn/mucang/android/core/api/verify/ErrorDialogParams;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/api/verify/ErrorDialogActivity;->l(Lcn/mucang/android/core/api/verify/ErrorDialogParams;Landroid/view/View;)V

    return-void
.end method
