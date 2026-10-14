.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/teach/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/b;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/b;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->z(Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V

    return-void
.end method
