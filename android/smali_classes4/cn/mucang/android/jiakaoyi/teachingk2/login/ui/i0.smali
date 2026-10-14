.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u0006H\u0016J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016J\u0008\u0010\u0012\u001a\u00020\u0006H\u0016J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/RecordPrivacyView;",
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;",
        "()V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrivacyRecordBinding;",
        "confirmRead",
        "",
        "createView",
        "Landroid/view/View;",
        "parent",
        "Landroid/view/ViewGroup;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "getCancelText",
        "",
        "getConfirmText",
        "isConfirmRead",
        "isRequired",
        "isSync",
        "refuseRead",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrivacyRecordBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    const-wide/16 v0, 0xbb8

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/k;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/k;-><init>()V

    .line 3
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->getType()I

    move-result v1

    const-string v3, "yinhe_privacy_record_face"

    .line 4
    invoke-virtual {v0, v1, v3}, Lcn/mucang/jiakaoyi/uilib/i/k;->p(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_exe_fail:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_exe_fail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->g(Z)V

    :cond_2
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_agree_anable:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_agree_anable)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/k;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/k;-><init>()V

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->getType()I

    move-result v1

    const-string v2, "yinhe_privacy_record_face"

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/k;->m(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->g(Z)V

    :cond_0
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_disagree_close:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_disagree_close)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/k;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/k;-><init>()V

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->getType()I

    move-result v1

    const-string v2, "yinhe_privacy_record_face"

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/k;->o(ILjava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-boolean v0, v0, Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;->confirm:Z

    .line 5
    :goto_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->g(Z)V

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrivacyRecordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrivacyRecordBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/i0;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrivacyRecordBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrivacyRecordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public isSync()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
