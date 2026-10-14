.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/c1;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    return-void
.end method

.method private synthetic r(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method public static t(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/c1;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/c1;-><init>()V

    const-string v1, "WxAccountQrDialog"

    .line 2
    invoke-virtual {v0, p0, v1}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->dialog_wx_official_account:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->close_dialog:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/q0;

    invoke-direct {p2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/q0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/c1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic s(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/c1;->r(Landroid/view/View;)V

    return-void
.end method
