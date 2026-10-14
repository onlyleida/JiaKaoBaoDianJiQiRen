.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/teach/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/c;->a:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/c;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/c;->a:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/c;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->A(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method
