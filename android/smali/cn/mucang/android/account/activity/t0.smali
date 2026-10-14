.class public final synthetic Lcn/mucang/android/account/activity/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/ui/LoginSmsCommonView;

.field public final synthetic b:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/t0;->a:Lcn/mucang/android/account/ui/LoginSmsCommonView;

    iput-object p2, p0, Lcn/mucang/android/account/activity/t0;->b:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/account/activity/t0;->a:Lcn/mucang/android/account/ui/LoginSmsCommonView;

    iget-object v1, p0, Lcn/mucang/android/account/activity/t0;->b:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->A(Lcn/mucang/android/account/ui/LoginSmsCommonView;Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Landroid/view/View;)V

    return-void
.end method
